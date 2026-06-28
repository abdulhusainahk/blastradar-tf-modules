# Shared module consumed by OTHER repos (e.g. blastradar-svc-checkout).
variable "cidr" { default = "10.0.0.0/16" }
variable "enable_flow_logs" { default = true }
resource "aws_vpc" "this" { cidr_block = var.cidr }
output "vpc_id" { value = aws_vpc.this.id }
