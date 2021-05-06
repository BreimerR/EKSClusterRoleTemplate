# Provides the VPC ID value
data "aws_vpc" "vpc" {

  depends_on = [module.vpc]

  filter {
    name = "tag:Name"
    values = [
      var.aws_vpc_name
    ]
  }
}


# Provides availability zones for our vpc
data "aws_availability_zones" "available" {

}
