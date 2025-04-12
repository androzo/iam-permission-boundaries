locals {
  human_boundary_name      = "${var.team}-human-permission-boundary"
  deployment_boundary_name = "${var.team}-deployment-permission-boundary"
}

resource "aws_iam_policy" "human_boundary" {
  name        = local.human_boundary_name
  description = "Permissions boundary for human role"

  policy = templatefile("${path.module}/policies/human.json", {
    team = var.team
  })

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = local.human_boundary_name
    team = "devops"
  }
}

resource "aws_iam_policy" "deployment_boundary" {
  name        = local.deployment_boundary_name
  description = "Permissions boundary for deployment role"

  policy = templatefile("${path.module}/policies/deployment.json", {
    team = var.team
  })

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = local.deployment_boundary_name
    team = "devops"
  }
}
