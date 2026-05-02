# terraform-ec2-module

Every now and then I want to create one or more EC2 instances with public IP addresses to quickly debug something.

This modules creates:

- Instance count of **n** with specified instance class
- A new VPC with a private subnet and supporting resources
- Security group ingress and egress to support SSH access
- A new SSH key pair using the specified public key file

## Usage

```terraform
module "debug_instances" {
  source = "git::https://github.com/danielhartnell/terraform-ec2-module?ref=main"

  instance_type  = "t3.micro"
  instance_count = 1
}

output "public_ips" {
  value = module.debug_instances.instance_public_ip
}
```

```bash
$ ssh ubuntu@<ip>
```
