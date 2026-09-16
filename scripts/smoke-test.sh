#!/usr/bin/env bash
set -euo pipefail

: "${APP_BASE_URL:?Set APP_BASE_URL, for example http://localhost:8080}"

curl --fail --silent --show-error "${APP_BASE_URL%/}/actuator/health"
echo
curl --fail --silent --show-error "${APP_BASE_URL%/}/api/health"
echo
