#!/usr/bin/env bash
set -euo pipefail

: "${APP_BASE_URL:?Set APP_BASE_URL to the ALB URL}"
: "${REQUESTS:?Set REQUESTS, for example 1000}"

for ((i = 1; i <= REQUESTS; i++)); do
  curl --silent --output /dev/null "${APP_BASE_URL%/}/actuator/health" &
done
wait
echo "Sent ${REQUESTS} health requests"
