# Provides an attachment of the default AmazonEKSClusterPolicy policy to the new eksClusterRole role
resource "aws_iam_role_policy_attachment" "eksClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.gitlab.name
}

# Provides an attachment of the GitLabEKSPolicy policy to the new GitLab role
resource "aws_iam_role_policy_attachment" "gitlab" {
  policy_arn = aws_iam_policy.gitlab.arn
  role       = aws_iam_role.gitlab.name
}
