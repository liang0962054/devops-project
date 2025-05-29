terraform {
  backend "s3" {
    bucket = "<my s3 bucket>"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}
