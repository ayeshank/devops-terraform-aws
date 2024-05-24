# MySQL RDS instance
resource "aws_db_instance" "mysql_instance" {
  identifier             = "mysql-instance"
  engine                 = "mysql"
  engine_version         = "8.0.35"
  instance_class         = "db.t3.micro"
  publicly_accessible    = true
  allocated_storage      = 10
  storage_type           = "gp2"
  username               = "ayesha"
  password               = "757001Ank$"
  vpc_security_group_ids = [aws_security_group.mysql_sg.id]

  skip_final_snapshot = true

  tags = {
    Name = "Ayesha MySQL Instance"
  }
}

output "db_instance_endpoint" {
  value = aws_db_instance.mysql_instance.endpoint
}

output "db_instance_username" {
  value = aws_db_instance.mysql_instance.username
}

# PostgreSQL RDS instance
resource "aws_db_instance" "postgres_instance" {
  identifier             = "postgres-instance"
  engine                 = "postgres"
  engine_version         = "16.2"
  publicly_accessible    = true
  instance_class         = "db.t3.micro"
  allocated_storage      = 10
  storage_type           = "gp2"
  username               = "ayesha"
  password               = "757001Ank$"
  vpc_security_group_ids = [aws_security_group.postgres_sg.id]

  skip_final_snapshot = true

  tags = {
    Name = "Ayesha MySQL Instance"
  }
}

output "postgres_instance_endpoint" {
  value = aws_db_instance.postgres_instance.endpoint
}

output "postgres_instance_username" {
  value = aws_db_instance.postgres_instance.username
}
