variable aws_region {
  type        = string
  # default   = "Uncomment and define your region here *Required *Options(eu-west-2,us-west-2...)"
  description = "The target AWS region for deploying resources"
}

variable aws_tag_environment {
  type        = string
  # default     = "Uncomment and define an environment tag"
  description = "The environment tag assigned to AWS resources"
}

variable aws_vpc_name {
  type        = string
  # default   = "uncomment and define vpc name here"
  description = "The target AWS VPC for deploying resources"
}

//noinspection HILUnresolvedReference
variable gitlab_account_id {
  type        = string
  # default   = get this from your gitlab kubernetes integration window
  default     = var.default_account_id
  description = "GitLab's AWS account used to grant cross-account role access"
}

//noinspection HILUnresolvedReference
variable gitlab_external_id {
  type        = string
  # default   = get this from your gitlab kubernetes integration window
  description = "External ID provided by GitLab as part of the IAM role trust policy to designate who can assume the role"
}

variable cluster_name {
  type        = string
  # default   = "Uncomment and define your cluster name here"
  description = "Gitlab default cluster name"
}
