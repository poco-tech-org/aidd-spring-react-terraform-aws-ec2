#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../infra"
terraform plan -destroy -out=destroy.tfplan
terraform show destroy.tfplan
read -r -p "Type DESTROY to continue: " confirmation
[[ "$confirmation" == "DESTROY" ]]
terraform apply destroy.tfplan
