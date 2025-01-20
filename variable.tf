#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "repository" {
  type        = string
  default     = "https://github.com/clouddrove/terraform-aws-vpc"
  description = "Terraform current module repo"
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. `name`,`application`."
}

variable "managedby" {
  type        = string
  default     = "hello@clouddrove.com"
  description = "ManagedBy, eg 'CloudDrove'"
}

# Variables
variable "cluster_name" {
  description = "Name of the CloudHSM cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where HSM instances will be deployed"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID where the CloudHSM cluster will be created"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `organization`, `environment`, `name` and `attributes`."
}

variable "hsm_type" {
  description = "The type of HSM cluster instance you want to create."
  type        = string
  default     = "hsm1.medium"
}

variable "cluster_mode" {
  description = "The mode to use in the cluster. This field is required if hsm_type is hsm2m.medium."
  type        = string
  default     = "FIPS"
}
