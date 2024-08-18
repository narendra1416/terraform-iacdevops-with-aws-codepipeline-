# AWS EC2 Security Group Terraform module.
# Security Group for Public Bastion Host
module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.2"

  # name = "public-bastion-sg"
  name = "${local.name}-public-bastion-sg"
  description = "Public Bastion security group with SSH (IPV4) port open for everybody"
  vpc_id = module.vpc.vpc_id

  # Ingress Rules & CIDR Blocks
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  # Egress Rules open for ALL
  egress_rules = ["all-all"]
  tags = local.common_tags
}

