output "vpc_id" {
  value = aws_vpc.main.id
}

output "rds_address" {
  value = aws_db_instance.app.address
}

output "rds_multi_az" {
  value = aws_db_instance.app.multi_az
}

output "cognito_user_pool_id" {
  value = aws_cognito_user_pool.app.id
}

output "cognito_client_id" {
  value = aws_cognito_user_pool_client.app.id
}
