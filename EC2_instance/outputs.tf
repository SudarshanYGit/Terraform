output "first_instance_public_ip" {
  description = "Public IP of the first EC2 instance"
  value       = aws_instance.first.public_ip
}

output "first_instance_name" {
  description = "Name tag of the first EC2 instance"
  value       = aws_instance.first.tags["Name"]
}

output "second_instance_public_ip" {
  description = "Public IP of the second EC2 instance"
  value       = aws_instance.second.public_ip
}

output "second_instance_name" {
  description = "Name tag of the second EC2 instance"
  value       = aws_instance.second.tags["Name"]
}
