variable "sg_name" {
  type        = string
  description = "name of the security group"
}

variable "all_cidr" {
  type = string
  description = "all internet access cidr"
  default = "0.0.0.0/0"
}