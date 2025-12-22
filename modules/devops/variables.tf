variable "role_name" {
  description = "IAM role name for DevOps"
  type        = string
  default     = "devops-role"
}

variable "policies" {
  description = "IAM policies for DevOps role"
  type        = list(string)
  default = [
    "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
    "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
    "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess",
    "arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "arn:aws:iam::aws:policy/CloudWatchFullAccess",
    "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  ]
}

variable "principal_type" {
  description = "Principal type allowed to assume the role (AWS or Service)"
  type        = string
  default     = "AWS"
}

variable "principal_value" {
  description = "Principal value (AWS ARN or service name)"
  type        = string
  default     = "arn:aws:iam::718159740586:root"
}

