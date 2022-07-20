resource "aws_iam_role" "ecr_role" {
  name = "ecr_role"

  assume_role_policy = jsonencode({
   "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "VisualEditor0",
        "Effect" : "Allow",
        "Action" : "ecs:*",
        "Resource" : "*"
      }
    ],
  }
  )

  tags = {
    tag-key = "tag-value"
  }
}
