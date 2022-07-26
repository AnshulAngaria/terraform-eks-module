#
# Provider Configuration
#

provider "aws" {
  region  = var.region
  shared_credentials_file 	= var.credentials_file
  profile                	= var.credentials_profile
}


data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

provider "http" {}
