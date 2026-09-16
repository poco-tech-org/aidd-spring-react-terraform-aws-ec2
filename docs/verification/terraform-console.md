# Terraform and console verification

After `terraform apply`, record the following from both Terraform output/state and the AWS Management Console:

- VPC ID and CIDR
- Public, application, and database subnets in two Availability Zones
- ALB and Target Group health
- EC2 Auto Scaling desired, minimum, maximum, and running capacity
- RDS endpoint, Multi-AZ flag, primary AZ, and secondary AZ
- Cognito User Pool and App Client identifiers

The console observation is part of the learning objective; a successful `terraform apply` alone is not enough.
