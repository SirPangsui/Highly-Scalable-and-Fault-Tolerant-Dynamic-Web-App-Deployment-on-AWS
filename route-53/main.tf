# get hosted zone details 
data "aws_route53_zone" "hosted_zone" {
  name = var.domain_name
}


# Create a Route 53 record for the root domain (e.g., camerinfoline.info)
resource "aws_route53_record" "root" {
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.domain_name  # Use the provided domain name
  type    = "A"  # Type of DNS record, A for alias
  
  alias {
    name                   = var.application_load_balancer_dns_name
    zone_id                = var.application_load_balancer_zone_id
    evaluate_target_health = true  # Evaluate the health of the target
  }
}

# Create a Route 53 record for the subdomain (e.g., www)
resource "aws_route53_record" "site_domain" {
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.record_name
  type    = "A"

  alias {
    name                   = var.application_load_balancer_dns_name
    zone_id                = var.application_load_balancer_zone_id
    evaluate_target_health = true
  }
}

