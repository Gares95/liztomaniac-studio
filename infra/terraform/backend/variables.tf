variable "aws_region" {
  type        = string
  description = "Region for backend resources."
  default     = "eu-west-1"
}

variable "project_name" {
  type        = string
  description = "Used for naming/tagging."
  default     = "liztomaniac"
}
