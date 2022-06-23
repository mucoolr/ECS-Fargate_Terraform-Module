region             = "us-east-2"
lBsecurityGroups   = ["sg-e52c2e93","sg-06281aa713d4a0754"]
lBSubnet           = ["subnet-f000fe8d", "subnet-1253d379"]
vpcId              = "vpc-1bb52d70"
ecsClusterName     = "config-service-cluster"
tags               = { "Purpose" : "Ocr" ,"Owner":"Ankit","Project":"Internal"}
ecs_securityGroups = ["sg-e52c2e93"]
ecs_subnets        = ["subnet-0c62dde21482e62dc"]
name_ecs_service   = "config_service"
taskDesiredCount   = 1
cpu                = 256
memory             = 512
roleARN            = "arn:aws:iam::016505711272:role/ecsTaskExecutionRole"
container_name     = "config_service_container"
containerPort      = 80










