# Terraform + ECS Fargate Demo

Inspired by - https://github.com/bradford-hamilton/terraform-ecs-fargate

This project shows how to easily spin up ECS Fargate instance with all necessary resources using Terraform

## Overview of app structure

_provider.tf_ - configuration of AWS provider

_ecs.tf_ - ECS configuraion

_alb.tf_ - Application Load Balancer configuration

_network.tf_ - VPC configuration

_security.tf_ - security groups configuration

_auto_scaling.tf_ - Auto Scalling configuration

_variables.tf_ - environment variables for Terraform

_outputs.tf_ - configuration of output

## Setup

First of all navigate to this page(https://learn.hashicorp.com/terraform/getting-started/install.html) and follow instruction how to download and install Terraform on your local machine

## Run

To initialize working directory run:

```
- terraform init
```

To build stack in the cloud run:

```
- terraform apply
```

## Destroy

To destroy stack in the cloud run:

```
- terraform destroy
```
