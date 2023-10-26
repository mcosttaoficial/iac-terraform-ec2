#security group aws terraform

resource "aws_security_group" "this" {
  name        = "tf-sg-aws"
  description = "tf-sg-aws"
  vpc_id      = "vpc-08506e2e88572dc5c"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name  = "tf-sg-aws"
    Owner = "Matheus C."
  }
}