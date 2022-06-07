resource "random_password" "this" {
  length           = 32
  special          = true
  lower            = true
  upper            = true
  override_special = "#!$%&"
}
resource "aws_directory_service_directory" "this" {
  type       = "MicrosoftAD"
  name       = var.domain_name
  short_name = var.short_name
  edition    = var.edition
  password   = random_password.this.result
  vpc_settings {
    vpc_id     = var.vpc_id
    subnet_ids = var.subnet_ids
  }
}
resource "aws_vpc_dhcp_options" "this" {
  domain_name         = var.domain_name
  domain_name_servers = aws_directory_service_directory.this.dns_ip_addresses
}
resource "aws_vpc_dhcp_options_association" "this" {
  vpc_id          = var.vpc_id
  dhcp_options_id = aws_vpc_dhcp_options.this.id
}
