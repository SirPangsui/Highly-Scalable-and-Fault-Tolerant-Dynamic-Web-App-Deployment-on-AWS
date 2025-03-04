# Store the Terraform state file in S3 and lock with DynamoDB
terraform {
  backend "s3" {
    bucket         = "your_s3_bucket"
    key            = "your_project/terraform.tfstate"
    region         = "your_region"
    profile        = "your_aws_profile"
    dynamodb_table = "your_dynamodb_table"
  }
}
