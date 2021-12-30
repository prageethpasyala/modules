# BACKEND CONFIGURATION
terraform {
  backend "s3" {
    bucket         = "pk-cr-tfstate"
    key            = "terraform/module_practice/terraform.tfstates"
    # dynamodb_table = "terraform-lock"
  }
}
