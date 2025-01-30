terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "yngmin-apnortheast2-tfstate"
    key            = "yngmin/terraform/route53/yngmin/stage.yngmin.com/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
