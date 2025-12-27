provider "aws" {
  region = var.aws_region
}
resource "aws_security_group" "ec2_sg" {
  name        = "ec2_sg"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "EC2-SG"
  }
}
resource "aws_instance" "first" {
  ami                    = var.base_ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "First-EC2"
  }
}
resource "aws_ami_from_instance" "first_ami" {
  name               = "first-ec2-ami"
  source_instance_id = aws_instance.first.id

  depends_on = [aws_instance.first]
}
resource "aws_instance" "second" {
  ami                    = aws_ami_from_instance.first_ami.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "Second-EC2-From-AMI"
  }
}
