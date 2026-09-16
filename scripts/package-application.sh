#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

cd "$ROOT_DIR/frontend"
npm ci
npm run build

rm -rf "$ROOT_DIR/backend/src/main/resources/static"
mkdir -p "$ROOT_DIR/backend/src/main/resources/static"
cp -R dist/. "$ROOT_DIR/backend/src/main/resources/static/"

cd "$ROOT_DIR/backend"
mvn clean package -DskipTests=false
echo "Created backend/target/aidd-task-api-0.0.1-SNAPSHOT.jar"
