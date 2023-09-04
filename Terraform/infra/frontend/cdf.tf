module "cdn" {

  source = "../../modules/cloudfront"

  bucket                       = var.bucket
  s3_origin_id                 = var.s3_origin_id
  region                       = var.region
  acl                          = var.acl
  price_class                  = var.price_class
  default_root_object          = var.default_root_object
}