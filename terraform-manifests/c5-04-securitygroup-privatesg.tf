# AWS EC2 Security Group Terraform module.
# Security Group for Security Group for Private EC2 Instances
module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.2"

  name = "${local.name}-private_sg"
  description = "Security group with SSH & HTTP (IPV4) port open for entier VPC Block"
  vpc_id = module.vpc.vpc_id

  # Ingress Rules & CIDR Blocks
  ingress_rules = ["ssh-tcp", "http-80-tcp", "http-8080-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  # Egress Rules open for ALL
  egress_rules = ["all-all"]
  tags = local.common_tags
}
