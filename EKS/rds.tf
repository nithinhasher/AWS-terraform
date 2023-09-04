resource "aws_db_instance" "mysql" {
  allocated_storage    = 20
  storage_type        = "gp2"
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t2.micro"
  identifier          = "backendrds"
  username            = "admin"
  password            = "Admin123456"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  db_subnet_group_name  = aws_db_subnet_group.rds_subnet_group.name

  publicly_accessible = true
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  subnet_ids = [aws_subnet.public-1.id, aws_subnet.public-2.id]
}