aws_region   = "ap-northeast-2"
cidr_numeral = "11"

# Please change "devart" to what you want to use
# d after name indicates develop. This means that devartd_apnortheast2 VPC is for development environment VPC in Seoul Region.
vpc_name = "yngmins_apnortheast2"

# Billing tag in this VPC 
billing_tag = "stage"

# Availability Zone list
availability_zones = ["ap-northeast-2a", "ap-northeast-2c"]

# In Seoul Region, some resources are not supported in ap-northeast-2b
availability_zones_without_b = ["ap-northeast-2a", "ap-northeast-2c"]

# shard_id will be used later when creating other resources.
# With shard_id, you could distinguish which environment the resource belongs to 
shard_id       = "yngminsapne2"
shard_short_id = "yngmin01s"

# d means develop
env_suffix = "s"

peering_requests = [
  {
    "id"         = "pcx-0684fc5b32b32c285"
    "vpc_name"   = "yngmind_apnortheast2"
    "cidr_block" = "10.10.0.0/16"
  },
]