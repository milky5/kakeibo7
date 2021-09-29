# EC2 AMI Amazon Linux 2 with .NET Core 3.0 and Mono 5.18
resource "aws_instance" "ec2-tf-test" {
    ami           = "ami-0bb2f9f47b50aaf83"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform-ec2-sample"
    }
}
