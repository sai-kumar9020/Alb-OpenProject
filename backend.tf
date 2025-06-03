terraform {
  required_version = ">= 1.10.0"

  backend "s3" {
    bucket       = "hcltechtrainings"
    key          = "vpcec2/terraform.tfstatefocalboard"
    region       = "us-east-1"
  }
}
