resource "github_repository" "example" {
  name        = "My_repo_terraform"
  description = "terraform using github provider"
  visibility = "public"
}

resource "aws_instance" "ec" {
  ami = var.os
  instance_type=var.size
  tags = {
     Name= var.name
  }
}

resource "aws_s3_bucket" "buck" {
  bucket = var.bucket
}


resource "aws_iam_user" "myuser" {
  name = "${var.username}-user" 
}

output "ip_address" {
  value= aws_instance.ec.private_ip
}


output "dns" {
  value = aws_instance.ec.public_dns
}