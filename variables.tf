variable "environment" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = ""
}

variable "aws_profile" {
  type        = string
  description = ""
}

variable "instance_type" {
  type        = string
  description = ""
}

variable "instance_ami" {
  type        = string
  description = ""
}


variable "instance_subnet_id" {
  type        = string
  description = ""
}

variable "security_groups" {
  type        = list(string)
  description = ""
}

variable "security_group_id" {
  type = list(string)
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Terraform Teste Matheus (ubuntu)"
    Project = "Matheus Teste Terraform"
  }
}