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
