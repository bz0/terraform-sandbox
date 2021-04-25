# サブネット２つ作成(publicとprivate)
resource "aws_subnet" "aws-tf-public-subnet-1a" {
  vpc_id            = aws_vpc.aws-tf-vpc.id
  cidr_block        = "10.1.1.0/24"
  availability_zone = "ap-northeast-1a"
  tags = {
    Name = "aws-tf-public-subnet-1a"
  }
}

resource "aws_subnet" "aws-tf-private-subnet-1a" {
  vpc_id            = aws_vpc.aws-tf-vpc.id
  cidr_block        = "10.1.20.0/24"
  availability_zone = "ap-northeast-1a"
  tags = {
    Name = "aws-tf-private-subnet-1a"
  }
}