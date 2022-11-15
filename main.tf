resource "aws_vpc" "vcp" {
  cidr_block = "192.168.0.0/24"
  enable_dns_support = 
  enable_dns_hostnames = 
  tags = {
    Name = "DOR5-Daniel"
    terraform = true
    github_repo = "https://github.com/dast835/isa-terraform.git/"
  }
}

resource "aws_subnet" "private" {
    availability_zone = "eu-west-1c"
    cidr_block = "192.168.0.16/28"
    vpc_id = aws_vpc.vpc.id
    tags = merge(
        var.common_tags, 
    )
  
}