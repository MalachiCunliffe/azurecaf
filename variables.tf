variable "client_secret" {
  default     = null
  description = "Client secret for the azure service principle"
}

variable "tenant_id" {
  default     = null
  description = "Tenant id for the azure tenant"
}

variable "root_id" {
  type    = string
  default = "myorg"
}

variable "root_name" {
  type    = string
  default = "Malachi INC"
}