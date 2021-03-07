terraform {
  backend "s3" {
    bucket         = "XYZ"
    key            = ""
    dynamodb_table = "terraform-state-lock"
    region         = "us-east-1"
  }
}
