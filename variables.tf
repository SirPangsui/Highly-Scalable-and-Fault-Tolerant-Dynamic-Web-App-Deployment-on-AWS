# Environment Variables
variable "region" {
  description = "The AWS region where resources will be deployed (e.g., us-east-1, eu-west-1)"
  type        = string
}

variable "project_name" {
  description = "The name of the project to be used for tagging resources"
  type        = string
}

variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod)"
  type        = string
}

# VPC Variables
variable "vpc_cidr" {
  description = "The CIDR block for the VPC (e.g., 10.0.0.0/16)"
  type        = string
}

variable "public_subnet_az1_cidr" {
  description = "CIDR block for the first public subnet in Availability Zone 1"
  type        = string
}

variable "public_subnet_az2_cidr" {
  description = "CIDR block for the second public subnet in Availability Zone 2"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  description = "CIDR block for the first private application subnet in Availability Zone 1"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  description = "CIDR block for the second private application subnet in Availability Zone 2"
  type        = string
}

variable "private_data_subnet_az1_cidr" {
  description = "CIDR block for the first private data subnet in Availability Zone 1"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  description = "CIDR block for the second private data subnet in Availability Zone 2"
  type        = string
}

# Security Group Variables
variable "ssh_ip" {
  description = "This is IP allowed to SSH to your instances which will be your ip"
  type        = string
}

# RDS Variables
variable "database_snapshot_id" {
  description = "ID of the RDS database snapshot used for restoring prepopulated data"
  type        = string
}

variable "database_instance_class" {
  description = "The instance type for the RDS database (e.g., db.t3.micro, db.m5.large)"
  type        = string
}

variable "database_instance_identifier" {
  description = "A unique identifier for the database instance"
  type        = string
}

variable "multi_az_deployment" {
  description = "Boolean flag to enable Multi-AZ deployment for high availability (true/false)"
  type        = bool
}


# ACM Variables
variable "domain_name" {
  description = "The primary domain name for the SSL/TLS certificate (e.g., example.com)"
  type        = string
}

variable "alternative_domain_name" {
  description = "An optional alternative domain name (e.g., www.example.com) for the certificate"
  type        = string
}

#ALB Variables
variable "target_type" {
  description = "The Target Type for the ALB"
  type        = string
}

#Autoscaling Group Varibales

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

#SNS Topic Variables
variable "operator_email" {
  description = "Enter valid email to receive SNS topic updates"
  type        = string
}

# Route 53 Variables
variable "record_name" {
  description = "The record name for route 53 record"
  type        = string
}
