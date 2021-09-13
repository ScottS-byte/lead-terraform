module "eks" {
  source                           = "../../../../modules/environment/aws/eks"
  region                           = var.region
  cluster                          = var.cluster_name
  cluster_version                  = var.cluster_version
  key_name                         = var.key_name
  preemptible_instance_types       = var.preemptible_instance_types
  preemptible_asg_min_size         = var.preemptible_asg_min_size
  preemptible_asg_max_size         = var.preemptible_asg_max_size
  preemptible_asg_desired_capacity = var.preemptible_asg_desired_capacity
  essential_instance_type          = var.essential_instance_type
  essential_asg_max_size           = var.essential_asg_max_size
  essential_asg_min_size           = var.essential_asg_min_size
  essential_asg_desired_capacity   = var.essential_asg_desired_capacity
  essential_taint_key              = var.essential_taint_key
  on_demand_percentage             = "0"
  vpc_name                         = var.vpc_name
  additional_mapped_roles          = var.additional_mapped_roles
  workers_additional_policies      = []
  enable_ssh_access                = var.enable_eks_ssh_access

}
