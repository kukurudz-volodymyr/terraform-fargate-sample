# App configs
variable "app_container_name" {
  description = "Name of ECS container"
  default     = "application"
}

variable "app_task_name" {
  description = "Name of ECS task definition"
  default     = "demo-task"
}
variable "app_service_name" {
  description = "Name of ECS service"
  default     = "demo-service"
}
variable "app_cluster_name" {
  description = "Name of ECS cluster"
  default     = "demo-cluster"
}
variable "app_alb_name" {
  description = "Name of ECS load balancer"
  default     = "demo-ecs-alb"
}
variable "app_alb_target_group_name" {
  description = "Name of ECS load balancer target group"
  default     = "demo-ecs-alb-target-group"
}
variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default     = "demo_ecs_task_execution_role"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default     = "demo_ecs_auto_scale_role"
}


# System configs

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "us-west-2"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "949887490211.dkr.ecr.us-west-2.amazonaws.com/example-image:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 1
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}
