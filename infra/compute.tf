data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

resource "aws_launch_template" "app" {
  name_prefix   = "${var.project_name}-"
  image_id      = data.aws_ami.al2023.id
  instance_type = var.instance_type

  iam_instance_profile {
    name = aws_iam_instance_profile.app.name
  }

  vpc_security_group_ids = [aws_security_group.app.id]

  user_data = base64encode(templatefile("${path.module}/user_data.sh.tftpl", {
    app_artifact_bucket       = aws_s3_bucket.artifacts.bucket
    app_artifact_key          = var.app_artifact_key
    app_port                  = var.app_port
    aws_region                = var.region
    db_name                   = var.db_name
    db_secret_arn             = aws_db_instance.app.master_user_secret[0].secret_arn
    db_username               = var.db_username
    db_endpoint               = aws_db_instance.app.address
    cognito_issuer            = "https://${aws_cognito_user_pool.app.endpoint}"
  }))

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  block_device_mapping {
    device_name = "/dev/xvda"

    ebs {
      volume_size           = 20
      volume_type           = "gp3"
      delete_on_termination = true
      encrypted             = true
    }
  }
}
