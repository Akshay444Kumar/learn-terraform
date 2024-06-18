provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "terra" {
    ami                         = var.ami_value
    instance_type               = var.instance_type_value
    subnet_id                   = var.subnet_id_value
    associate_public_ip_address = true

    tags = {
        Name = "terra-server"
    }
}