.PHONY: backend-test frontend-build terraform-validate

backend-test:
	cd backend && mvn test

frontend-build:
	cd frontend && npm ci && npm run build

terraform-validate:
	cd infra && terraform fmt -check && terraform init -backend=false && terraform validate
