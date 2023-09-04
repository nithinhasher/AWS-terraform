# environment = "development"
# name        = "storage-bucket"
region      = "ap-south-1"
price_class = "PriceClass_200"
acl         = "private"
default_root_object = "index.html"
access_key = "AKIA4J4747SV334XXB77"
secret_key = "h65INwwhWX5Hd3YPOAUDUOtpXiuC5WqZoqZZz1P6"

bucket      = "s3-mybucket-webapp.845907033259"
s3_origin_id = "s3-my-webapp.example.com"

tags = {
  environment = "development"
  team        = "devops"
  owner       = "terraform"
}


# bucket_name  = "3-tier-frontend.testing.test.com"
# create_s3    = true
# s3_origin_id = "demo-frontend"