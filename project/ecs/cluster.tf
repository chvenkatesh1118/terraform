resource "aws_ecs_cluster" "ecscluster" {
  name = "ecscluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}