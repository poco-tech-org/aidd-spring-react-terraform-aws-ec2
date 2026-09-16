#!/usr/bin/env bash
set -euo pipefail

: "${ARTIFACT_BUCKET:?Set ARTIFACT_BUCKET to the Terraform output}"
ARTIFACT_KEY="${ARTIFACT_KEY:-aidd-task-api.jar}"

aws s3 cp backend/target/aidd-task-api-0.0.1-SNAPSHOT.jar "s3://${ARTIFACT_BUCKET}/${ARTIFACT_KEY}"
echo "Uploaded s3://${ARTIFACT_BUCKET}/${ARTIFACT_KEY}"
