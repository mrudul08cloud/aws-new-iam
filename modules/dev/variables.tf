variable "role_name" {
  default = "dev-role"
}

variable "policies" {
  default = [
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
    "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess",
    "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess",
    "arn:aws:iam::aws:policy/AmazonSSMReadOnlyAccess",
    "arn:aws:iam::aws:policy/AWSXrayReadOnlyAccess"
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
