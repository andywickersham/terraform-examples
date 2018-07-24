##################################################################################
# BACKENDS
##################################################################################
terraform {
  backend "s3" {
    key            = "networking.state"
    region         = "us-east-1"
    dynamodb_table = "ddt-tfstatelock"
  }
}
