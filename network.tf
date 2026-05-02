module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "temp-vpc-${random_string.random.result}"
  cidr = "10.0.0.0/16"

  azs            = ["us-west-2a"]
  public_subnets = ["10.0.101.0/24"]

  default_security_group_ingress = [
    {
      cidr_blocks = "0.0.0.0/0",
      description = "Allow SSH access on the default security group",
      from_port   = 22,
      to_port     = 22,
      protocol    = "tcp"
    },
    {
      cidr_blocks = "0.0.0.0/0",
      description = "Allow all outbound traffic from EC2 instances",
    }
  ]

  default_security_group_egress = [
    {
      cidr_blocks = "0.0.0.0/0",
      description = "Allow all outbound traffic from EC2 instances",
    }
  ]
}
