variable "aws_region" {
  default = "ap-northeast-2"
}

variable "asg_min_size" {
  description = "Minimum number of instances in the ASG"
  default = 1
}

variable "asg_max_size" {
  description = "Maximum number of instances in the ASG"
  default = 1
}

variable "asg_desired_capacity" {
  description = "Desired number of instances in the ASG"
  default = 1
}