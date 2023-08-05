locals {
  eks_addons = [
    {
      name              = "vpc-cni"
      version           = "v1.12.5-eksbuild.1"
      resolve_conflicts = "OVERWRITE"
      configuration_values = jsonencode({
        env = {
          WARM_ENI_TARGET    = "0"
          WARM_IP_TARGET     = "3"
          WARM_PREFIX_TARGET = "1"
          MINIMUM_IP_TARGET  = "5"
        }
      })
      service_account_role_arn = ""
    }
  ]
}
