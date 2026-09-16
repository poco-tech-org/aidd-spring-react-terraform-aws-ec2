# EC2 deployment smoke test

1. Upload the versioned JAR to the Terraform-created artifact bucket.
2. Confirm the Auto Scaling Group launches an instance with the expected Launch Template.
3. Check the systemd service and application log through Systems Manager.
4. Confirm `/actuator/health` and `/api/health` return success.
5. Confirm the ALB Target Group reports the instance as Healthy.
6. Execute the authenticated browser flow after Cognito is configured.
