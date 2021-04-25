# インターネットゲートウェイの作成
resource "aws_internet_gateway" "aws-tf-igw" {
  vpc_id = aws_vpc.aws-tf-vpc.id
  tags = {
    Name = "aws-tf-igw"
  }
}