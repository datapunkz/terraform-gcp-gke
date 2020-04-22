#!/bin/bash

DOCKER_IMAGE=$1

cd gke_cluster/
terraform plan -out=plan.txt
terraform apply --auto-approve

gcloud container clusters get-credentials $(terraform output cluster) --zone="us-east1-d"

cd ../kubernetes
terraform output -state=gke_cluster/terraform.tfstate cluster
# Deploy app
terraform apply -var $(DOCKER_IMAGE) --auto-approve