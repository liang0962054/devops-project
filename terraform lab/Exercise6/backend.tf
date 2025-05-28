terraform {
  backend "s3" {
    bucket = "wiliang-terra-state"
    key = "terraform/backend"
    region = "us-east-1"
  }
}