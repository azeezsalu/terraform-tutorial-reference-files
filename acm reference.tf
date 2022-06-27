# configured aws provider with proper credentials
provider "aws" {
  region    = 
  profile   = 
}

# request public certificates from the amazon certificate manager.
resource "aws_acm_certificate" "acm_certificate" {
  domain_name               = 
  subject_alternative_names = []
  validation_method         = 

  lifecycle {
    create_before_destroy = 
  }
}

# get details about a route 53 hosted zone
data "aws_route53_zone" "route53_zone" {
  name         = 
  private_zone = 
}

# create a record set in route 53 for domain validatation
resource "aws_route53_record" "route53_record" {
  for_each = {
    for dvo in *aws_acm_certificate.acm_certificate*.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = 
}

# validate acm certificates
resource "aws_acm_certificate_validation" "acm_certificate_validation" {
  certificate_arn         = 
  validation_record_fqdns = [for record in *aws_route53_record.route53_record* : record.fqdn]
}