variable "aws_region" {
  type = map
  default = {
    "dev"   = "eu-west-1"
    "pre"   = "eu-west-1"
    "pro"   = "us-east-1"
  }
}

variable "assume_role" {
  type = map
  default = {
    "dev"   = "arn:aws:iam::00000000:role/stylesage-admins"
    "pre"   = "arn:aws:iam::00000000:role/stylesage-admins"
    "pro"   = "arn:aws:iam::00000000:role/stylesage-admins" 
  }
}

variable "cidr" {
  type = map
  default = {
    "dev"   = "10.23.0.0/24"
    "pre"   = "10.24.0.0/24"
    "pro"   = "10.25.0.0/24"
  }
}

variable "azs" {
  type = map
  default = {
    "dev"   = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
    "pre"   = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
    "pro"   = ["us-east-1a", "us-east-1b", "us-east-1c"]
  }
}

variable "private_subnets" {
  type = map
  default = {
    "dev"   = ["10.23.0.0/24", "10.23.0.16/24", "10.23.0.32/24"]
    "pre"   = ["10.24.0.0/24", "10.24.0.16/24", "10.24.0.32/24"]
    "pro"   = ["10.25.0.0/24", "10.25.0.16/24", "10.25.0.32/24"]
  }
}

variable "public_subnets" {
  type = map
  default = {
    "dev"   = ["10.23.0.48/24", "10.23.0.64/24", "10.23.0.80/24"]
    "pre"   = ["10.24.0.48/24", "10.24.0.64/24", "10.24.0.80/24"]
    "pro"   = ["10.25.0.48/24", "10.25.0.64/24", "10.25.0.80/24"]
  }
}
