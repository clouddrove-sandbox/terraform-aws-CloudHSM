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

output "vpc_id" {
  description = "The ID of vpc created"
  value = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The ID of subnets created"
  value = module.subnets.public_subnet_id
}