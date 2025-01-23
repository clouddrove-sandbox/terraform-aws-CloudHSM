output "cluster_id" {
  description = "The ID of HSM cluster"
  value = module.cloudhsm.cluster_id
}

output "hsm_id" {
  description = "The ID of HSM module"
  value = module.cloudhsm.hsm_ids
}

output "hsm_eni_ip" {
  description = "The IP Address of hsm module"
  value = module.cloudhsm.hsm_eni_ips
}