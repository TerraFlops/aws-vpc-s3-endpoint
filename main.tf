data "aws_vpc" "vpc" {
  id = var.vpc_id
}

resource "aws_vpc_endpoint" "s3" {
  service_name = "com.amazonaws.ap-southeast-2.s3"
  vpc_endpoint_type = "Gateway"
  vpc_id = data.aws_vpc.vpc.id
  route_table_ids = var.route_table_ids
  tags = {
    Name = var.name == null ? "${data.aws_vpc.vpc.tags["Name"]}S3VpcEndpoint" : var.name
  }
}