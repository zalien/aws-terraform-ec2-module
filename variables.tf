variable "ami" {}
variable "number_instances" {}

variable "instance_type" {}
variable "monitoring" {}
variable "key_name" {}
variable "subnet_ids" { type = list }
variable "security_group_ids" { type = list }
variable "user_data" {}
variable "iam_instance_profile" {}
variable "volume_type" {}
variable "volume_size" {}
variable "delete_on_termination" {}
variable "environment" {}
variable "availability_zones" { type = list }
variable "associate_public_ip_address" { default = true }
variable "tags" {
  type    = map
  default = {}
}
