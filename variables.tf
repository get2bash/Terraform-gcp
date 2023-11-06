# Replace all the default section with conresponding values

variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
  default     = "project_id"
}

variable "bucket_name" {
  description = "Name of the buckets to create."
  type        = string
  default     = "bucket_name"
}

variable "region" {
  description = "Name of the buckets to create."
  type        = string
  default     = "region"
}

variable "zone" {
  description = "Name of the buckets to create."
  type        = string
  default     = "zone"
}

variable "location" {
  description = "Name of the buckets to create."
  type        = string
  default     = "location"
}

variable "network_name" {
  description = "The name of the VPC network being created"
  default     = "network_name"
}