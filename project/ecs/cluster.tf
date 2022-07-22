resource "aws_ecs_cluster" "ecscluster" {
  name = "ecscluster"

  setting {
    name  = "containerInsights"
    value = "enabled"

  }
}
resource "aws_ecs_cluster_capacity_providers" "providers" {
  cluster_name = aws_ecs_cluster.ecscluster.name

  capacity_providers = ["EC2"]

  default_capacity_provider_strategy {
    base              = 1
    weight            = 1
    capacity_provider = "EC2"
  }
}