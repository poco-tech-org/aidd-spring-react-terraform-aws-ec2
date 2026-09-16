variable "project_name" {
  type    = string
  default = "aidd-ec2"
}

variable "environment" {
  type    = string
  default = "demo"
}

variable "region" {
  type    = string
  default = "ap-northeast-1"
}

variable "availability_zones" {
  type    = list(string)
  default = ["ap-northeast-1a", "ap-northeast-1c"]
}

variable "vpc_cidr" {
  type    = string
  default = "10.20.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.20.0.0/24", "10.20.1.0/24"]
}

variable "private_app_subnet_cidrs" {
  type    = list(string)
  default = ["10.20.10.0/24", "10.20.11.0/24"]
}

variable "private_db_subnet_cidrs" {
  type    = list(string)
  default = ["10.20.20.0/24", "10.20.21.0/24"]
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "app_port" {
  type    = number
  default = 8080
}

variable "app_artifact_key" {
  type    = string
  default = "aidd-task-api.jar"
}

variable "asg_min_size" {
  type    = number
  default = 2
}

variable "asg_desired_capacity" {
  type    = number
  default = 2
}

variable "asg_max_size" {
  type    = number
  default = 4
}

variable "rds_multi_az" {
  type    = bool
  default = true
}

variable "db_name" {
  type    = string
  default = "aidd"
}

variable "db_username" {
  type    = string
  default = "aidd_app"
}

variable "db_instance_class" {
  type    = string
  default = "db.t4g.micro"
}

variable "cognito_domain_prefix" {
  type    = string
  default = "aidd-ec2-course"
}

variable "cognito_callback_urls" {
  type    = list(string)
  default = ["http://localhost:5173/auth/callback"]
}

variable "cognito_logout_urls" {
  type    = list(string)
  default = ["http://localhost:5173/"]
}
