resource "aws_instance" "server" {
  ami=""
  instance_type = "t2.micro"
  subnet_id = var.sn
  security_groups = var.sg
  

  tags = {
    Name ="myserver"
  }
}