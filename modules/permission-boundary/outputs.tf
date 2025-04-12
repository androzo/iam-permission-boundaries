output "human_boundary_arn" {
  value = aws_iam_policy.human_boundary.arn
}

output "deployment_boundary_arn" {
  value = aws_iam_policy.deployment_boundary.arn
}
