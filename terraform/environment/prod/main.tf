# EC2 Instance
resource "aws_instance" "prod_ec2" {
  ami           = "ami-08e5424edfe926b43" # Amazon Linux 2 (replace with your region's AMI)
  instance_type = var.instance_type

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name        = "prod-ec2"
    Environment = "prod"
  }
}