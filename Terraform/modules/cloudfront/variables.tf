variable "region" {
  type        = string
  description = "region"
}

variable "bucket" {
  type        = string
  description = "S3 bucket names"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "acl" {
  type = string
  description = "Should this be private or publicly open"
}

variable "default_root_object" {
  description = "The object that you want CloudFront to return i.e., index.html"
  type        = string
}

variable "comment" {
    type        = string
    description = "My comments to include about the distribution."
    default = "my-cloudfront"
}

variable "default_cache_behavior" {
  description = "Configuration for default cache behavior"
  type = object({
    cached_methods         = list(string)
    allowed_methods        = list(string)
  })
  default = {
    cached_methods         = ["GET", "HEAD"]
    allowed_methods        = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
  }
}

variable "ordered_cache_behavior" {
  description = "Configuration for default cache behavior"
  type = object({
    cached_methods         = list(string)
    allowed_methods        = list(string)
    viewer_protocol_policy = string
  })
  default = {
    cached_methods         = ["GET", "HEAD"]
    allowed_methods        = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    viewer_protocol_policy = "redirect-to-https"
  }
}
variable "ordered_cache" {
  description = "Configuration for default cache behavior"
  type = object({
    cached_methods         = list(string)
    allowed_methods        = list(string)
    viewer_protocol_policy = string
  })
  default = {
    cached_methods         = ["GET", "HEAD"]
    allowed_methods        = ["GET", "HEAD", "OPTIONS"]
    viewer_protocol_policy = "redirect-to-https"
  }
}
variable "price_class" {
    description = "Configuration for default cache behavior"
    type = string
}

variable "s3_origin_id" {
    type = string
}