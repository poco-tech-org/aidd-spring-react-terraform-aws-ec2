#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../infra"
terraform init -backend=false
set +e
terraform plan -detailed-exitcode
status=$?
set -e

case "$status" in
  0) echo "No drift detected." ;;
  2) echo "Drift or unapplied changes detected." ;;
  *) exit "$status" ;;
esac
