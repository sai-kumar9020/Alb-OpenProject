resource "aws_instance" "web-servers" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  associate_public_ip_address= true
  vpc_security_group_ids = [var.sg_id]
  key_name               = var.key_name
  user_data              = var.user_data
  tags = {
    Name = "${var.project_name}"
  }
}
