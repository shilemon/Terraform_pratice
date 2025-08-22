
variable "aws_region"  {
  type        = string
  default     = "us-west-2"
}

variable "ami" {
  type        = string
  default  = "ami-03aa99ddf5498ceb9"
}

variable "instance_type" {
  type  = string
  default  = "t3.micro"
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string

}