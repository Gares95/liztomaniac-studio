variable "project_name" {
  type        = string
  description = "Project name used for tagging/naming"
  default     = "liztomaniac"


  validation {
    condition     = can(regex("^[a-z0-9-]{3,32}$", var.project_name))
    error_message = "project name must be 3-32 chars, lowercase letters/numbers only"
  }
}

variable "aws_region" {
  type        = string
  description = "AWS region to deploy into."
  default     = "eu-west-1"
}
