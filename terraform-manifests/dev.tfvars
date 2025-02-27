# Environment
environment = "dev"
# VPC Variables
vpc_name = "JLR-VPC"
vpc_cidr_block = "10.0.0.0/16"
vpc_availability_zones = ["us-east-1a", "us-east-1b"]
vpc_public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
vpc_database_subnets= ["10.0.5.0/24", "10.0.6.0/24"]
vpc_create_database_subnet_group = true 
vpc_create_database_subnet_route_table = true   
vpc_enable_nat_gateway = true  
vpc_single_nat_gateway = true

# EC2 Instance Variables
instance_type = "t3.micro"
instance_keypair = "angular"
private_instance_count = 2

# DNS Name
dns_name = "devdemo5.cloud0119tub.linkpc.net"
