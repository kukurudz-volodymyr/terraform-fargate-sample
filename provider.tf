provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "vp"
  region                  = var.aws_region
}