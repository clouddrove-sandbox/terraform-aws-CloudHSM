# Outputs
output "cluster_id" {
  description = "The ID of the CloudHSM cluster"
  value       = aws_cloudhsm_v2_cluster.cluster.cluster_id
}

output "cluster_state" {
  description = "The state of the CloudHSM cluster"
  value       = aws_cloudhsm_v2_cluster.cluster.cluster_state
}

output "hsm_ids" {
  value       = aws_cloudhsm_v2_hsm.hsm[*].hsm_id
  description = "The IDs of the HSM instances"
}

output "hsm_states" {
  value       = aws_cloudhsm_v2_hsm.hsm[*].hsm_state
  description = "The states of the HSM instances"
}

output "hsm_eni_ips" {
  value       = aws_cloudhsm_v2_hsm.hsm[*].ip_address
  description = "The IP addresses of the HSM instances"
}

output "subnet_ids" {
  description = "The ID of subnets created"
  value = var.subnet_ids
}