terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "yngmin-apnortheast2-tfstate"
    key            = "yngmin/terraform/services/helloworker/yngmins_apnortheast2/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
