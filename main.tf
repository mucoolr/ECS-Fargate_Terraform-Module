module "Load_Balancer" {
  source           = "./Load_Balancer"
  lBsecurityGroups = var.lBsecurityGroups
  lBSubnet         = var.lBSubnet
  vpcId            = var.vpcId
  ecsClusterName   = var.ecsClusterName
  tags             = var.tags
  port=var.containerPort


}
module "ECS" {
  source           = "./ECS"
  securityGroups   = var.ecs_securityGroups
  subnets          = var.ecs_subnets
  vpcId            = var.vpcId
  ecsClusterName   = var.ecsClusterName
  name_ecs_service = var.name_ecs_service
  taskDesiredCount = var.taskDesiredCount
  imageURI         = var.imageURI
  cpu              = var.cpu
  tgARN=         module.Load_Balancer.tgARN
  memory           = var.memory
  roleARN          = var.roleARN
  container_name   = var.container_name
  containerPort    = var.containerPort
  tags             = var.tags
}
output "dns_name"{
  value=module.Load_Balancer.dns_name
}