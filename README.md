# terraform-ec2-module
I want a module to quickly spin up one or more ec2 instances with SSH access for investigating issues.

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
