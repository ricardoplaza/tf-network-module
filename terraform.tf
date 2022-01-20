terraform {
  backend "s3" {
    bucket               = "ricardoplaza-infrastructure"
    region               = "eu-west-1"
    workspace_key_prefix = "ricardoplaza-infrastructure/network"
    key                  = "terraform_state"
    encrypt              = "true"
    dynamodb_table       = "ricardoplaza_terraform_network_lock"
  }
}
