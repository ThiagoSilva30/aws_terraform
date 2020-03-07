# Configure the AWS Provider
provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
  
}

resource "aws_s3_bucket" "bgsdrgidsjdgtwejvptipd" {
  bucket = var.bucket

  tags = {
    Name        = var.tag_name
    Environment =  var.enviroment
  }
}

resource "aws_instance" "web" {
  ami = var.ami
  instance_type = var.type
}
