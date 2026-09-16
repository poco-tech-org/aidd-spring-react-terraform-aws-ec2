resource "aws_db_subnet_group" "app" {
  name       = "${var.project_name}-db-subnets"
  subnet_ids = [for subnet in aws_subnet.private_db : subnet.id]
}

resource "aws_db_instance" "app" {
  identifier                 = "${var.project_name}-postgres"
  engine                    = "postgres"
  engine_version             = "16"
  instance_class             = var.db_instance_class
  allocated_storage          = 20
  max_allocated_storage      = 50
  storage_type               = "gp3"
  db_name                    = var.db_name
  username                   = var.db_username
  manage_master_user_password = true
  multi_az                   = var.rds_multi_az
  publicly_accessible        = false
  skip_final_snapshot        = true
  deletion_protection        = false
  backup_retention_period    = 1
  db_subnet_group_name       = aws_db_subnet_group.app.name
  vpc_security_group_ids     = [aws_security_group.db.id]
  apply_immediately          = true
}
