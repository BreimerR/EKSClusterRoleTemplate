# Provides permission to make calls to other AWS services and manage the resources used with the service
# Reference: https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html

# Provides a cross-account role for GitLab to authenticate and manage the EKS cluster
resource "aws_iam_role" "gitlab" {
  name               = "${var.cluster_name}-role"
  description        = "Provides a cross-account role for GitLab to authenticate and manage the EKS cluster"
  assume_role_policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": [
                    "arn:aws:iam::${var.account_id}:root"
                ],
                "Service":"eks.amazonaws.com"
            },
            "Action": "sts:AssumeRole",
            "Condition": {
                "StringEquals": {
                    "sts:ExternalId": "${var.external_id}"
                }
            }
        }
    ]
}
POLICY
  tags = {
    environment = var.aws_tag_environment
    source      = "Terraform"
  }
}