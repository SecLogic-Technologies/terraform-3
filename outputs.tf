# IAM ROLE Output
output "role-id" {
  description = "The role's ID"
  value       = aws_iam_role.IAMRole.id
}

output "role-arn" {
  description = "The ARN assigned by AWS to this role"
  value       = aws_iam_role.IAMRole.arn
}

output "role-name" {
  description = "The name of the role"
  value       = aws_iam_role.IAMRole.name
}

