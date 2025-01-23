variable "subnet_ids" {
  description = "List of subnet IDs where HSM instances will be deployed"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID where the CloudHSM cluster will be created"
  type        = string
}