# Use module for service
module "helloworker" {
  source = "../_module/helloworker"

  # Name of service
  service_name = "helloworker"

  # Port for service and healthcheck
  service_port     = 8080
  healthcheck_port = 8080

  # VPC Information via remote_state
  shard_id                 = data.terraform_remote_state.vpc.outputs.shard_id
  public_subnets           = data.terraform_remote_state.vpc.outputs.public_subnets
  private_subnets          = data.terraform_remote_state.vpc.outputs.private_subnets
  aws_region               = data.terraform_remote_state.vpc.outputs.aws_region
  vpc_cidr_numeral         = data.terraform_remote_state.vpc.outputs.cidr_numeral
  route53_internal_domain  = data.terraform_remote_state.vpc.outputs.route53_internal_domain
  route53_internal_zone_id = data.terraform_remote_state.vpc.outputs.route53_internal_zone_id
  target_vpc               = data.terraform_remote_state.vpc.outputs.vpc_id
  vpc_name                 = data.terraform_remote_state.vpc.outputs.vpc_name
  billing_tag              = data.terraform_remote_state.vpc.outputs.billing_tag
  bastion_aware_sg_id = data.terraform_remote_state.vpc.outputs.aws_security_group_bastion_aware_id

  # Domain Name 
  # This will be the prefix of record 
  # e.g) helloworker.devops-art-factory.com
  domain_name = "helloworker"

  # Route53 variables
  acm_external_ssl_certificate_arn = var.r53_variables.yngmin.acm_arn_apnortheast2
  route53_external_zone_id         = var.r53_variables.yngmin.acm_arn_apnortheast2

  # Resource LoadBalancer variables
  lb_variables = var.lb_variables

  # Security Group variables
  sg_variables = var.sg_variables

  # Home Security Group via remote_state
  home_sg = data.terraform_remote_state.vpc.outputs.aws_security_group_home_id

  # CIDR for external LB
  # Control allowed IP for external LB 
  ext_lb_ingress_cidrs = [
    "0.0.0.0/0"
  ]

  key_name = "hello"

  min_size = var.asg_min_size
  max_size = var.asg_max_size
  desired_capacity = var.asg_desired_capacity
}
