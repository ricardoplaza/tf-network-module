module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${terraform.workspace}-vpc"
  cidr = var.cidr[terraform.workspace]

  azs             = var.azs[terraform.workspace]
  private_subnets = var.private_subnets[terraform.workspace]
  public_subnets  = var.public_subnets[terraform.workspace]

  enable_nat_gateway = true
  enable_vpn_gateway = false
  single_nat_gateway = false
  one_nat_gateway_per_az = false

  reuse_nat_ips       = true                    # <= Skip creation of EIPs for the NAT Gateways
  external_nat_ip_ids = "${aws_eip.nat.*.id}"   # <= IPs specified here as input to the module

  tags = {
    Terraform = "true"
    Environment = terraform.workspace
    Scope = "test"
  }
}

resource "aws_eip" "nat" {
  count = 3
  vpc = true

  tags = {
    Terraform = "true"
    Environment = terraform.workspace
    Scope = "test"
  }
}