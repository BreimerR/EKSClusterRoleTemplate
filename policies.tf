# Provides IAM policy based on the EKS policy document
resource "aws_iam_policy" "gitlab" {
  name        = "${var.cluster_name}-policy"
  description = "IAM Policy for GitLab EKS"
  policy      = data.aws_iam_policy_document.gitlab.json
}
