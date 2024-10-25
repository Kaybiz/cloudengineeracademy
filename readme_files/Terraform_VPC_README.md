# AWS VPC Infrastructure with Terraform

This project creates a basic AWS network infrastructure using Terraform.

## Resources Created

- VPC
- 2 Subnets
- Internet Gateway
- Route Table
- 2 Route Table Associations

## Architecture Diagram

![VPC Architecture](images/Vpc%20architecture.web.png)

## Resource Details

### VPC
- CIDR Block: 192.168.0.0/16

### Subnets
1. Subnet 1
   - CIDR Block: 192.168.1.0/24
   - Availability Zone: us-east-1a
2. Subnet 2
   - CIDR Block: 192.168.2.0/24
   - Availability Zone: us-east-1b

### Route Table
- Routes:
  - Local route (auto-added)
  - 0.0.0.0/0 -> Internet Gateway

### Route Table Associations
- Subnet 1 and Subnet 2 associated with the route table

The above resources are shown in the image below. 

## The AWS console screenshot shows the VPC I created with terraform configurations.
- ![VPC Screenshot](images/vpc-created-with-terra.png)
  
## Terraform Configuration

Key parts of our Terraform configuration:

```hcl
# VPC
resource "aws_vpc" "main" {
    cidr_block = "192.168.0.0/16"
    tags = {
        Name = "main-tf-vpc"
    }
}

# Subnets
resource "aws_subnet" "subnet1" {
    vpc_id     = aws_vpc.main.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "us-east-1a"
    
tags = {
        Name = "subnet 1"
}

#Subnet 2
resource "aws_subnet" "subnet2" {
  vpc_id   = aws_vpc.main.id
  cidr_block   = "192.168.2.0/24"
  availability_zone = "us-east-1b"
  
  tags = {
    Name = "subnet 2"
  }
}


#Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
    
    tags = {
        Name = "main-tf-igw"
    }
}

#Route Table
resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "main-route-table"
  }
}

#Route Table Association Subnet 1
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.route_table.id
}

#Route Table Association Subnet 2
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.route_table.id

## How to Use
Navigate to the Terraform project directory:

cd 
/Users/admin/Documents/CLOUDENGINEERACADEMY/cea-terraform/terraform_new_folder



Run terraform init to initialize Terraform

Run terraform plan to preview changes

Run terraform apply to create the infrastructure

Cleaning Up
To destroy the created resources:

terraform destroy

Caution: This will remove all resources created by this Terraform 
configuration.

Project Location
The Terraform configuration files for this project are located in:
/Users/admin/Documents/CLOUDENGINEERACADEMY/cea-terraform/terraform_new_folder
