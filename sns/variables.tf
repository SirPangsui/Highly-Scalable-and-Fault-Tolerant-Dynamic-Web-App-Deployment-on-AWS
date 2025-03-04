#S3 Variables
variable "project_name" {
  description = "The name of the project to be used for tagging resources"
  type        = string
}

variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)"
  type        = string
}


variable "sns_topic_email" {
  description = "Enter valid email to receive SNS topic updates"
  type        = string
}
