output "dns_ip_addresses" {
  value = aws_directory_service_directory.this.dns_ip_addresses
}
output "id" {
  value = aws_directory_service_directory.this.id
}
output "access_url" {
  value = aws_directory_service_directory.this.access_url
}
output "security_group_id" {
  value = aws_directory_service_directory.this.security_group_id
}
output "domain_name" {
  value = var.domain_name
}
output "dns_name" {
  value = aws_directory_service_directory.this.name
}
output "password" {
  value = nonsensitive(random_password.this.result)
}
