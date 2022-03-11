# IAM ROLE
resource "aws_iam_role" "IAMRole" {
  name = var.role-name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "${var.CyberqArn}"
            },
            "Action": "sts:AssumeRole",
            "Condition": {
                "StringEquals": {
                    "sts:ExternalId": var.ExternalId
                }
            }
        }
    ]
})
}

resource "aws_iam_role_policy_attachment" "PolicyAttach" {
  count = length(var.PolicyName)
  role       = aws_iam_role.IAMRole.name
  policy_arn = "arn:aws:iam::aws:policy/${var.PolicyName[count.index]}"
}
