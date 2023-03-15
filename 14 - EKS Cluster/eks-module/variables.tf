variable "region" {
  description = "The AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "availability_zones_count" {
  description = "The number of Availability Zones"
  type        = number
  default     = 2
}

variable "project" {
  description = "Identifier for all other ressources"
  type = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_bits" {
  description = "The number of subnet bits for the CIDR. For example, specifying a value 8 for this parameter will create a CIDR with a mask of /24."
  type        = number
  default     = 8
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    "Project"     = "DevDay"
    "Environment" = "Development"
    "Owner"       = "Stefan Wohlfart"
  }
}
