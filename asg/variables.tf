variable "project_name" {
  description = "The name of the project to be used for tagging resources"
  type        = string
}

variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)"
  type        = string
}

variable "ec2_ami_id" {
  description = "The Amazon Machine Image (AMI) ID used for launching EC2 instances"
  type        = string
}

variable "ec2_instance_type" {
  description = "The EC2 instance type to be used for the cluster (e.g., t3.micro, m5.large)"
  type        = string
}

variable "ec2_key_pair" {
  description = "The name of the SSH key pair to be used for accessing EC2 instances"
  type        = string
}

variable "web_server_security_group_id" {
  description = "The ID of the security group associated with the web server instances"
  type        = string
}

variable "private_app_subnet_az1_id" {
  description = "The ID of the private subnet in Availability Zone 1 for deploying ECS instances"
  type        = string
}

variable "private_app_subnet_az2_id" {
  description = "The ID of the private subnet in Availability Zone 2 for high availability"
  type        = string
}

variable "asg_desired_capacity" {
  description = "The desired number of EC2 instances in the Auto Scaling Group"
  type        = number
}

variable "asg_max_capacity" {
  description = "The maximum number of EC2 instances in the Auto Scaling Group"
  type        = number
}

variable "asg_min_capacity" {
  description = "The minimum number of EC2 instances in the Auto Scaling Group"
  type        = number
}

variable "alb_target_group_arn" {
  description = "The ARN of the Application Load Balancer (ALB) target group for ECS services"
  type        = string
}

variable "sns_topic_arn" {
  description = "The ARN of the SNS topic for sending notifications related to the ECS cluster"
  type        = string
}
