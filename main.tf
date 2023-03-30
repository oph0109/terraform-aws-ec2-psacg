resource "aws_instance" "inst" {
ssh: Connection to cloud_user@54.225.38.32:22 exited: Error reading: Connection reset by peer
/ $ i            = var.ami
  instance_type  = var.instance_type
  subnet_id      = var.subnet

  tags = {
    Name = "TERRAFORM-GURU-${count.index}"
  }
}

variable "instance_count" {}

variable "ami" {}

variable "instance_type" {}

variable "subnet" {}

output "aws_instances" {
  value = aws_instance.inst.*.tags.Name
}
