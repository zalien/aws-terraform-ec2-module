resource "aws_instance" "instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  monitoring                  = var.monitoring
  key_name                    = var.key_name
  user_data                   = var.user_data
  count                       = var.number_instances
  availability_zone           = element(var.availability_zones, count.index)
  subnet_id                   = element(var.subnet_ids, count.index)
  iam_instance_profile        = var.iam_instance_profile
  vpc_security_group_ids      = var.security_group_ids
  associate_public_ip_address = var.associate_public_ip_address


  root_block_device {
    volume_type           = var.volume_type
    volume_size           = var.volume_size
    delete_on_termination = var.delete_on_termination
  }
  tags = var.tags

  lifecycle {
    create_before_destroy = true
  }

}
