output "alb_dns_name" {
  value       = aws_lb.app.dns_name
  description = "Public DNS name of the Application Load Balancer"
}

output "artifact_bucket_name" {
  value = aws_s3_bucket.artifacts.bucket
}

output "asg_name" {
  value = aws_autoscaling_group.app.name
}

output "cognito_user_pool_id" {
  value = aws_cognito_user_pool.app.id
}

output "cognito_client_id" {
  value = aws_cognito_user_pool_client.app.id
}

output "cognito_issuer" {
  value = "https://${aws_cognito_user_pool.app.endpoint}"
}

output "cognito_domain" {
  value = aws_cognito_user_pool_domain.app.domain
}

output "rds_address" {
  value = aws_db_instance.app.address
}

output "rds_multi_az" {
  value = aws_db_instance.app.multi_az
}

output "rds_secondary_availability_zone" {
  value = aws_db_instance.app.secondary_availability_zone
}
