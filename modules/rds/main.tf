resource "aws_db_instance" "from_snapshot" {
  identifier              = "rds-ext-db"
  instance_class          = "db.t3.micro"
  engine                  = "postgres"
  snapshot_identifier     = "postgres-init-snapshot"
  allocated_storage       = 20
  vpc_security_group_ids  = var.security_group_ids
  db_subnet_group_name    = aws_db_subnet_group.db_subnet_group.name
  skip_final_snapshot     = true
  publicly_accessible     = false
  multi_az                = false

  username = var.db_username
  password = var.db_password

  tags = {
    Name = "RDS-EXTERNAL"
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "db-subnet-group"
  subnet_ids = var.db_subnet_ids

  tags = {
    Name = "DB Subnet Group"
  }
}
