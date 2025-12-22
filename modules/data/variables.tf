variable "role_name" {
  default = "data-role"
}

variable "policies" {
  default = [
    "arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "arn:aws:iam::aws:policy/AmazonAthenaFullAccess",
    "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess",
    "arn:aws:iam::aws:policy/AmazonRedshiftFullAccess",
    "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess"
  ]
}

variable "principal_type" {
  description = "Principal type allowed to assume the role (AWS or Service)"
  type        = string
  default     = "Service"
}

variable "principal_value" {
  description = "Principal value (AWS ARN or service name)"
  type        = string
  default     = "ec2.amazonaws.com"
}


