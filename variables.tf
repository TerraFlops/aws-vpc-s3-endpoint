variable "vpc_id" {
  type = string
  description = "Id of the VPC where the endpoint will be created"
}

variable "name" {
  type = string
  description = "Optional name to tag the endpoint. If none supplied a name will be automatically generated based on the VPC name tag"
  default = null
}

variable "route_table_ids" {
  type = set(string)
  description = "IDs of route teables where endpoint will be exposed"
  default = null
}
