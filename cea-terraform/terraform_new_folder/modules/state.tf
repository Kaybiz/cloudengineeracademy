terraform {
  backend "s3" {
    bucket = "my-terraform-st"
    key = "global/s3/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "s3-tf-table"


  }

}