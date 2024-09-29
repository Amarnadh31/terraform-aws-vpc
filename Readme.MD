VPC Module

This module is going to create the following resources. for HA we are going to get first 2 AZ.

VPC
* Internet Gateway associated with VPC
* 2 Public Subnets
* 2 Private Subnets
* 2 Database Subnets
* Database subnet group
* EIP
* NAT Gateway
* Public Route table
* Private Route table
* Database Route table
* Routes
* Route table associations with subnets
* Peering with default VPC(if Required)
* Peering routes in acceptor and requestor route tables




Inputs:

* vpc_cidr (Mandatory) : User must provide the VPC CIDR
* enable_dns_hostnames (optional) : By default dns_hostnames is true
* project (Mandatory) : user must provide project name
* environment (Mandatory) : user must provide Environment name
* common_tags (Optional) : tags are always optional. if tags required you can provide.
* vpc_tags (optional) : Default is empty. user can supply tags in map(string) format
* public_subnet_cidr (Mandatory) : user need to supply 2 valid public subnet CIDR
* public_subnet_tags (Optional) : Deafult is empty. user can supply tags in map(string) format.
* private_subnet_cidr (Mandatory) : user need to supply 2 valid private subnet CIDR
* private_subnet_tags (optional) : Deafult is empty. user can supply tags in map(string) format.
* database_subnet_cidr (Mandatory) : user need to supply 2 valid Database subnet CIDR
* database_subnet_tags (Optional) : Deafult is empty. user can supply tags in map(string) format.
* nat_tags (optional) : Deafult is empty. user can supply tags in map(string) format.
* public_route_tags (optional) : Deafult is empty. user can supply tags in map(string) format.
* private_route_tags (optional) : Deafult is empty. user can supply tags in map(string) format.
* database_route_tags (optional) : Deafult is empty. user can supply tags in map(string) format.
* peering_required (optional) :default is false

Outputs
* vpc_id: VPC ID created
* public_subnet_ids: list of 2 public subnet ids created
* private_subnet_ids: list of 2 private subnet ids created
* database_subnet_ids: list of 2 database subnet ids created
* public_route_table_id : public route table id created
* private_route_table_id : private route table id created
* database_route_table_id : database route table id created