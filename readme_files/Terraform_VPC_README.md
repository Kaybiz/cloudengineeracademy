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
  
## Terraform Configuration and How to Use

Here is my terra VPC Configuration in VScode for your reference:
- ![VPC Screenshot](images/terra-vpc-configurations-in-vscode.png)

Navigate to the Terraform project directory to see the configuration code:
<p>The complete Terraform configuration for this VPC setup can be found in the <a href="https://github.com/Kaybiz/cloudengineeracademy/blob/main/cea-terraform/terraform_new_folder/main.tf">main.tf</a> file.</p>
<p>Key resources defined in this configuration include:</p>
<ul>
<li><p>VPC</p>
</li><li><p>Subnets</p>
</li><li><p>Internet Gateway</p>
</li><li><p>Route Table</p>
</li><li><p>Route Table Associations</p>
</li></ul>

## Terraform Commands Used

Run terraform init to initialize Terraform

Run terraform plan to preview changes

Run terraform apply to create the infrastructure

The image below is my terminal results of the apply command.

![VPC Terminal Result](images/terraform-apply-vpc-terminal-result.png)

## Cleaning Up
To destroy the created resources:

Run terraform destroy

Caution: This will remove all resources created by this Terraform 
configuration.

Project Location
The Terraform configuration files for this project are located in:
href="https://github.com/Kaybiz/cloudengineeracademy/blob/main/cea-terraform/terraform_new_folder/main.tf">main.tf</a> file.</p>
