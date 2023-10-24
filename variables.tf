variable "region" {
  type    = string
  default = "ap-northeast-2"
}

variable "priv_ip" {
  description = "customed private ip for instance"
  type        = string
  default     = "10.80.1.4"
}

variable "host_name" {
  description = "customed hostname for instance"
  type        = string
  default     = "tf-poc-linux"
}

## Terraform-PoC-9-ec2-Multi-vpc ##  10.80.0.0/16
variable "vpc_cidr" {
  description = "vpc cidr"
  type = string
  default = "10.80.0.0/16"
}
## Terraform-PoC-9-ec2-Multi-vpc public subnet ## 10.80.1.0/24
variable "subnet_cidr" {
  default = "10.80.1.0/24"
}

variable prefix {
  default = "TF-PoC-04-stand-linux"
}