output "instance_public_ip" {
  description = "The public IP address of each EC2 instance"
  value       = aws_instance.server.*.public_ip
}
