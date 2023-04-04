variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "Default region"

}

variable "Myvpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Myvpc_default_cidr"

}

variable "My_subnets_cidrs" {
  type        = list(string)
  default     = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  description = "Subnets_cidrs"

}

variable "My_az_subnets" {
  type        = list(string)
  default     = ["a", "b", "a", "b"]
  description = "My_az_subnets"

}

variable "My_tags_subnets" {
  type        = list(string)
  default     = ["app1", "app2", "db1", "db2"]
  description = "My_tags_subnets"

}