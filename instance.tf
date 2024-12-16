data "aws_availability_zones" "available" {}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.my_vpc.id
}

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  description = "Private Subnet ID"
  value       = aws_subnet.private_subnet.id
} 

output "app_server_public_ip" {
  description = "App Server Public IP"
  value       = aws_instance.app_server.public_ip
}

