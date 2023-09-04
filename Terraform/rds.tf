# resource "aws_db_instance" "sample_db" {
#   allocated_storage = 20
#   storage_type      = "gp2"
#   engine            = "mysql"
#   engine_version    = "5.7"
#   instance_class    = "db.t2.micro"
#   #   name                 = "sampledb"
#   identifier          = "sampledb"
#   username            = "admin"
#   password            = "password"
#   skip_final_snapshot = true
# }
