# Get DNS Information from AWS Route53

data "aws_route53_zone" "mydomain" {
  name         = "cloud0119tub.linkpc.net"
}

# Output MyDomain zone ID

output "mydomain_zoneid" {
  description = "The Hosted zone id of the desired hosted zone"
  value = data.aws_route53_zone.mydomain.zone_id
}


# Output MyDomain name
output "mydomain_name" {
  description = "The Hosted zone name of the desired hosted zone"
  value = data.aws_route53_zone.mydomain.name
}

