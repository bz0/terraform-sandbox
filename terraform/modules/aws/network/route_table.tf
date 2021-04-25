# ルートテーブルの作成
resource "aws_route_table" "aws-tf-public-route" {
  vpc_id = aws_vpc.aws-tf-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.aws-tf-igw.id
  }
  tags = {
    Name = "aws-tf-public-route"
  }
}

# サブネットの関連付けでルートテーブルをパブリックサブネットに紐付け
resource "aws_route_table_association" "aws-tf-public-subnet-association" {
  subnet_id      = aws_subnet.aws-tf-public-subnet-1a.id
  route_table_id = aws_route_table.aws-tf-public-route.id
}