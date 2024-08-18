terraform {
  backend "s3" {
    bucket         = "terraform_state_files"
    key            = "path/to/terraform.tfstate"
    region         = "eu-north-1"
  }
}
