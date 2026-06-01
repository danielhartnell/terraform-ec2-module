data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = [var.ubuntu_ami_lookup_filter]
  }

  owners = ["amazon"] # Canonical
}

