#!/bin/bash
DOCKER_IMAGE=$1

# Destroy app deplyment
terraform destroy -var $(DOCKER_IMAGE) --auto-approve

# Destroy the cluster
terraform destroy --auto-approve