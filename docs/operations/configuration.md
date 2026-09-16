# Runtime configuration

The application receives environment-specific values through environment variables and Spring profiles.

- `local`: local PostgreSQL and the demo user header used before Cognito is introduced
- `aws`: RDS connection values and the Cognito issuer URI

Do not commit `.env.local`, `terraform.tfvars`, passwords, or access tokens. The EC2 bootstrap script retrieves the database secret at startup and writes only the runtime environment file on the instance.
