resource "aws_cognito_user_pool" "app" {
  name = "${var.project_name}-users"

  username_attributes      = ["email"]
  auto_verified_attributes = ["email"]

  password_policy {
    minimum_length    = 12
    require_lowercase = true
    require_numbers   = true
    require_symbols   = true
    require_uppercase = true
  }
}

resource "aws_cognito_user_pool_client" "app" {
  name         = "${var.project_name}-web-client"
  user_pool_id = aws_cognito_user_pool.app.id

  generate_secret = false

  allowed_oauth_flows_user_pool_client = true
  allowed_oauth_flows                   = ["code"]
  allowed_oauth_scopes                  = ["openid", "email"]
  callback_urls                         = var.cognito_callback_urls
  logout_urls                           = var.cognito_logout_urls
  supported_identity_providers          = ["COGNITO"]
}

resource "aws_cognito_user_pool_domain" "app" {
  domain       = "${var.cognito_domain_prefix}-${random_string.suffix.result}"
  user_pool_id = aws_cognito_user_pool.app.id
}
