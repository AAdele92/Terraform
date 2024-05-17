variable "instance_type" {
  type        = string
  description = "instance type"
  default     = "t2.micro"
}

variable "ami" {
  type        = string
  description = "ami"
  default     = "ami-008ea0202116dbc56"
}

variable "region" {
  type        = string
  description = "region to deploy"
  default     = "eu-west-2"
}