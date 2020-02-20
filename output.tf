output "instance_private_ips" {
  value = [aws_instance.instance.*.private_ip]
}
output "instance_public_ips" {
  value = [aws_instance.instance.*.public_ip]
}
output "instance_ids" {
  value = aws_instance.instance.*.id
}
