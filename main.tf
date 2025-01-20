# main.tf
# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

module "labels" {
  source      = "clouddrove/labels/aws"
  version     = "1.3.0"
  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
  repository  = var.repository
}

# CloudHSM v2 Cluster
resource "aws_cloudhsm_v2_cluster" "cluster" {
  hsm_type   = var.hsm_type
  subnet_ids = var.subnet_ids
  
  depends_on = [ var.subnet_ids ]

  tags = merge(
    {
      Name = var.cluster_name
    },
    var.tags
  )
}

# CloudHSM v2 HSM
resource "aws_cloudhsm_v2_hsm" "hsm" {
  count     = length(var.subnet_ids)

  cluster_id = aws_cloudhsm_v2_cluster.cluster.cluster_id
  subnet_id  = var.subnet_ids[count.index]
}
