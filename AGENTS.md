# Repository working agreements

## Purpose

This repository contains the source code and teaching materials for the AIDD Spring Boot + React + Terraform + AWS EC2 course.

## Development loop

1. Read the relevant section in `curriculum.yaml` and its lecture note under `docs/lectures/`.
2. Make the smallest change that satisfies the lecture objective.
3. Run the available formatter, tests, and static checks before moving on.
4. Review AI-generated changes manually, especially authentication, IAM, Security Groups, Terraform, and secrets.
5. Record the verification result and the exact command used.

## Backend

- Use constructor injection.
- Keep controllers thin; put business rules in services.
- Keep API error responses consistent.
- Add or update a test for behavior changes.
- Do not commit credentials, tokens, passwords, or real AWS identifiers.

## Frontend

- Keep API access in `frontend/src/api.js`.
- Keep authentication concerns in `frontend/src/auth.js`.
- Treat loading, empty, success, and error states explicitly.
- Do not put Cognito secrets in the frontend; this course uses a public App Client.

## Terraform and AWS

- Run `terraform fmt`, `terraform validate`, and `terraform plan` before `apply`.
- Inspect the resulting resources in the AWS Management Console.
- Prefer least-privilege IAM and Security Group rules.
- Never commit `terraform.tfstate`, `terraform.tfvars`, or generated secrets.
- Run `terraform destroy` after a practice or recording session when the resources are no longer needed.

## Commit convention

The course history is organized by lecture. Each lecture commit uses the exact lecture title from `curriculum.yaml` as its commit message.
