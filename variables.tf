variable "location" {
  type    = string
  default = "norwayeast"
}

variable "project" {
  type        = string
  description = "Project name"
}

variable "env" {
  type        = string
  description = "Deployment environment"
}

variable "prefix" {
  type = string
}

variable "sku_tier" {
  type    = string
  default = "Free"
}

variable "kubernetes_version" {
  type    = string
  default = null
}
