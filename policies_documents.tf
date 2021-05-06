# Provides EKS focused policy documents for GitLab EKS management
# Reference: https://gitlab.com/help/user/project/clusters/add_eks_clusters.md#new-eks-cluster
data "aws_iam_policy_document" "gitlab" {
  statement {
    sid = "GitLabEKSPolicy"
    actions = [
      "autoscaling:CreateAutoScalingGroup",
      "autoscaling:DescribeAutoScalingGroups",
      "autoscaling:DescribeScalingActivities",
      "autoscaling:UpdateAutoScalingGroup",
      "autoscaling:CreateLaunchConfiguration",
      "autoscaling:DescribeLaunchConfigurations",
      "cloudformation:CreateStack",
      "cloudformation:DescribeStacks",
      "ec2:AuthorizeSecurityGroupEgress",
      "ec2:AuthorizeSecurityGroupIngress",
      "ec2:RevokeSecurityGroupEgress",
      "ec2:RevokeSecurityGroupIngress",
      "ec2:CreateSecurityGroup",
      "ec2:createTags",
      "ec2:DescribeImages",
      "ec2:DescribeKeyPairs",
      "ec2:DescribeRegions",
      "ec2:DescribeSecurityGroups",
      "ec2:DescribeSubnets",
      "ec2:DescribeVpcs",
      "eks:CreateCluster",
      "eks:DescribeCluster",
      "iam:AddRoleToInstanceProfile",
      "iam:AttachRolePolicy",
      "iam:CreateRole",
      "iam:CreateInstanceProfile",
      "iam:CreateServiceLinkedRole",
      "iam:GetRole",
      "iam:ListRoles",
      "iam:ListAttachedRolePolicies", # Added per https://gitlab.com/gitlab-org/gitlab/-/issues/232960
      "iam:PassRole",
      "ssm:GetParameters"
    ]
    resources = ["*"]
    effect    = "Allow"
  }
}
