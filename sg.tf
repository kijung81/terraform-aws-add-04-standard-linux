resource "aws_security_group" "web" {
  name        = "linuxsg"
  description = "ec2 linux sg"
  vpc_id      = aws_vpc.golfzon-vpc.id

  ingress {
    description      = "ssh access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.prefix}-linux-sg"
  }
}