variable "name" {
  default     = "aws-storage-gateway"
  type        = string
  description = "Name of the storage gateway instance that will be created in EC2"
}

variable "aws_region" {
  type        = string
  description = "Region for AWS Resources"
  # default     = ""
}

# variable "availability_zone" {
#   type        = string
#   description = "Availability zone for the Gateway Ec2 Instance."
#   default     = ""
# }

variable "allow_unverified_ssl" {
  type        = bool
  description = "Boolean that can be set to true to disable SSL certificate verification."
  default     = false
}

variable "vpc_cidr_block" {
  type        = string
  description = "VPC CIDR block for the creation of example VPC and subnets"
  default     = "10.0.0.0/16"
}

variable "client_ip_cidrs" {
  type        = string
  sensitive   = true
  description = "The IP addresses or CIDR block of clients that are allowed to access the file gateway. If there are multiple clients, please separate using commas. The value must contain either valid IP addresses or valid CIDR blocks. Minimum 1 item. Maximum 100 items."
}

variable "subnet-count" {
  type        = number
  description = "Number of sunbets per type"
  default     = 1
}

variable "ingress_cidr_blocks" {
  type        = string
  description = "The CIDR blocks to allow ingress into your File Gateway instance for NFS and SMB client access. For multiple CIDR blocks, please separate with comma"
  default     = "10.0.0.0/16"
}

variable "ingress_cidr_block_activation" {
  type        = string
  description = "The CIDR block to allow ingress port 80 into your File Gateway instance for activation. For multiple CIDR blocks, please separate with comma"
  # default     = "0.0.0.0/0"
}

variable "ssh_public_key_path" {
  type        = string
  description = "Absolute file path to the the public key for the EC2 Key pair"
}