provider = "aws" {
region = "us-east-2"
}
 resource "aws_instance" "my_instance" {
 ami = "ami-05fb0b8c1424f266b"
 key_name = "user-key"
 security_group_ids = "sg-0a22086994cda4c15"
}