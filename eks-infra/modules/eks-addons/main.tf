resource "aws_eks_addon" "this" {
  for_each = { for addon in var.addons : addon.name => addon }

  cluster_name             = var.name
  addon_name               = each.value.name
  addon_version            = each.value.version
  resolve_conflicts        = each.value.resolve_conflicts
  configuration_values     = each.value.configuration_values
  service_account_role_arn = each.value.service_account_role_arn
  preserve                 = true
}
