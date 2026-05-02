resource "aws_instance" "server" {
  count = var.instance_count

  ami           = data.aws_ami.ubuntu.id
  key_name      = aws_key_pair.temp.key_name
  instance_type = var.instance_type

  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true
}

resource "aws_key_pair" "temp" {
  key_name   = "temp-key-${random_string.random.result}"
  public_key = file(var.public_key_path)
}

#
# Help avoid naming colisions
#

resource "random_string" "random" {
  length           = 4
  special          = false
}
