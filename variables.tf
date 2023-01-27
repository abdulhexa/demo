#variables.tf

variable resourceGroupName {
  type=string
  default="az-k8s-2axx-rg"
}
variable location {
  type=string
  default="WestEurope"
} 
variable resourceName {
  type=string
  default="az-k8s-2axx"
} 
variable agentCount {
  type=number
  default=2
} 
variable agentCountMax {
  type=number
  default=4
} 
variable custom_vnet {
  type=bool
  default=true
} 
variable bastion {
  type=bool
  default=true
} 
variable enable_aad {
  type=bool
  default=true
} 
variable AksDisableLocalAccounts {
  type=bool
  default=true
} 
variable enableAzureRBAC {
  type=bool
  default=true
} 
variable registries_sku {
  type=string
  default="Premium"
} 
variable privateLinks {
  type=bool
  default=true
} 
variable keyVaultIPAllowlist {
  default=["34.98.216.223/32"]
} 
variable omsagent {
  type=bool
  default=true
} 
variable retentionInDays {
  type=number
  default=30
} 
variable networkPolicy {
  type=string
  default="azure"
} 
variable azurepolicy {
  type=string
  default="audit"
} 
variable enablePrivateCluster {
  type=bool
  default=true
} 
variable ingressApplicationGateway {
  type=bool
  default=true
} 
variable appGWcount {
  type=number
  default=0
} 
variable appGWsku {
  type=string
  default="WAF_v2"
} 
variable appGWmaxCount {
  type=number
  default=10
} 
variable appgwKVIntegration {
  type=bool
  default=true
} 
variable keyVaultAksCSI {
  type=bool
  default=true
} 
variable keyVaultCreate {
  type=bool
  default=true
} 
variable acrPrivatePool {
  type=bool
  default=true
}
