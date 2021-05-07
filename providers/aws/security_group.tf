# Provides an AWS security group for the GitLab EKS Cluster
resource "aws_security_group" "gitlab" {
  depends_on  = [module.vpc]
  name        = var.cluster_name
  description = "GitLab EKS Cluster"
  vpc_id      = module.vpc.vpc_id

  tags = {
    Name        = var.cluster_name
    environment = var.aws_tag_environment
    source      = "Terraform"
  }


}