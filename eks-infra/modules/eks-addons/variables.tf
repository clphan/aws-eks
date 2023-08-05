variable "name" {
  type = string
}

variable "addons" {
  description = "List of EKS managed add-ons to add"
  default     = []
  type = list(
    object({
      name                     = string
      version                  = string
      resolve_conflicts        = string
      configuration_values     = string
      service_account_role_arn = string
    })
  )
}
