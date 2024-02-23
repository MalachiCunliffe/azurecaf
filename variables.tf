variable "client_secret" {
  type = string
  default     = null
  description = "Client secret for the azure service principle"
}

variable "tenant_id" {
  type = string
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

variable "client_id" {
  type = string
  default = null
  description = "clientID of the azure service principle"
}