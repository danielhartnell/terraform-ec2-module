variable "instance_type" {
  type = string
  description = "EC2 instance type for the servers"
  default = "c6a.8xlarge"
}

variable "instance_count" {
  type = number
  description = "The number of EC2 instances to create"
  default = 2
}

variable "public_key_path" {
  type = string
  description = "The path to the SSH public key that will be written to authorized_keys on the servers"
  default = "~/.ssh/id_rsa.pub"
}

variable "ubuntu_ami_lookup_filter" {
  type = string
  description = "The filter used to find the AMI ID to create the instances with"
  default = "ubuntu/images/hvm-ssd-gp3/ubuntu-resolute-26.04-amd64-server-*"
}
