# Replace all the default section with conresponding values

variable "project_id" {
  description = "The project ID to host the network in"
  default     = "project_id"
}

variable "zone" {
  description = "The zone of the instances."
  type        = string
}

variable "region" {
  description = "The region of the instances."
  type        = string
}