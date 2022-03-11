# IAM Role Var

variable "role-name" {
  description = "The name of the Role"
  type        = string
  default     = "CyberqRole"
}

variable "ExternalId" {
  description = "Copy ExternalId from Cyberq dashboard"
  type        = string
  default     = ""
}

variable "CyberqArn" {
  description = "Copy ARN from Cyberq dashboard"
  type        = string
  default     = ""
}

variable "PolicyName" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["SecurityAudit", "AWSElasticBeanstalkReadOnly", "AmazonDynamoDBReadOnlyAccess", "AmazonSNSReadOnlyAccess", "AmazonEMRReadOnlyAccessPolicy_v2", "AmazonElasticMapReduceReadOnlyAccess", "AmazonElasticFileSystemReadOnlyAccess"]
}
