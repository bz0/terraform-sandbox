output "vpc" {
  value = aws_vpc.aws-tf-vpc
}

output "subnet-public" {
  value = aws_subnet.aws-tf-public-subnet-1a
}

output "subnet-private" {
  value = aws_subnet.aws-tf-private-subnet-1a
}