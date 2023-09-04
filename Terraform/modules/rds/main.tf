# module "rds_security_group" {
#   source  = "terraform-aws-modules/security-group/aws"
#   version = "4.2.0"

#   name        = "${var.environment}-${var.db_name}-DB-SG"
#   description = "RDS security group"
#   vpc_id      = var.vpc_id

#   # ingress
#   ingress_with_cidr_blocks = var.ingress_with_cidr_blocks
#   tags = {
#     Name = "${var.environment}-rds-security-group"
#   }
# }

