# # ec2.tf

# resource "aws_instance" "ubuntu_instance" {
#   ami             = "ami-080e1f13689e07408" # Ubuntu 20.04 AMI ID
#   instance_type   = "t2.micro"
#   subnet_id       = "subnet-0445675983709ccc2" # Hardcoded subnet ID for Ubuntu instance
#   key_name        = "ayesha-terraform"
#   security_groups = [aws_security_group.ubuntu_sg.id] # Assign Ubuntu security group
#   tags = {
#     Name = "tf_created_ec2_ubuntu"
#   }

#   root_block_device {
#     volume_size = 8
#     volume_type = "gp3"
#   }

#   user_data = templatefile("${path.module}/ec2_userdata/ubuntu_userdata.sh", {})
# }

# resource "aws_instance" "amazon_linux_2_instance" {
#   ami             = "ami-0a1179631ec8933d7" # Amazon Linux 2 AMI ID
#   instance_type   = "t2.micro"
#   subnet_id       = "subnet-0445675983709ccc2" # Hardcoded subnet ID for Amazon Linux 2 instance
#   key_name        = "ayesha-terraform"
#   security_groups = [aws_security_group.amazon_linux_sg.id] # Assign Amazon Linux 2 security group
#   tags = {
#     Name = "tf_created_ec2_amazon_linux_2"
#   }

#   root_block_device {
#     volume_size = 8
#     volume_type = "gp3"
#   }

#   user_data = templatefile("${path.module}/ec2_userdata/al2_userdata.sh", {})
# }

# resource "aws_instance" "amazon_linux_2023_instance" {
#   ami             = "ami-04e5276ebb8451442" # Amazon Linux 2023 AMI ID
#   instance_type   = "t2.micro"
#   subnet_id       = "subnet-0445675983709ccc2" # Hardcoded subnet ID for Amazon Linux 2023 instance
#   key_name        = "ayesha-terraform"
#   security_groups = [aws_security_group.amazon_linux_sg.id] # Assign Amazon Linux 2023 security group
#   tags = {
#     Name = "tf_created_ec2_amazon_linux_2023"
#   }

#   root_block_device {
#     volume_size = 8
#     volume_type = "gp3"
#   }

#   user_data = templatefile("${path.module}/ec2_userdata/al2023_userdata.sh", {})
# }


resource "aws_instance" "ubuntu_instance" {
  ami             = "ami-080e1f13689e07408" # Ubuntu 20.04 AMI ID
  instance_type   = "t2.micro"
  subnet_id       = "subnet-0445675983709ccc2" # Hardcoded subnet ID for Ubuntu instance
  key_name        = "ayesha-terraform"
  security_groups = [aws_security_group.ubuntu_sg.id] # Assign Ubuntu security group
  tags = {
    Name = "Ayesha ubuntu instance"
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }

  user_data = templatefile("${path.module}/ec2_userdata/ubuntu_userdata.sh", {})
}
