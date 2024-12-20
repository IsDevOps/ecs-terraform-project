terraform {
  backend "s3" {
    bucket         = "ecs-bucket-test-00"
    key            = "ecs/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}