variable "domain_name" {
  description = "the domain name of the active directory service."
}
variable "short_name" {
  description = "the short name of the active directory service."
}
variable "edition" {
  default     = "Standard"
  description = "the edition of the MicrosoftAD active directory service. Standard or Enterprise"
}
variable "vpc_id" {
  description = "the vpc id of the active directory service."
}
variable "subnet_ids" {
  type        = list(string)
  description = "the subnet ids of the active directory service."
}
