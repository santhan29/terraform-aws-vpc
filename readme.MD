## TERRAFORM AWS VPC CUSTOMISED MODULE

this module is gng to create the following resources, for high availability we are gng to get first 2 availability zones

- VPC
- INTERNET GATEWAY ASSOCIATED WITH VPC
- 2 PUBLIC SUBNETS
- 2 PRIVATE SUBNETS
- 2 DATABASE SUBNETS
- DATABASE SUBNET GROUP 
- EIP 
- NAT GATEWAY 
- PUBLIC ROUTE TABLE
- PRIVATE ROUTE TABLE
- DATABASE ROUTE TABLE
- ROUTES
- ROUTE TABLE ASSOCIATION WITH SUBNETS
- PEERING WITH DEFAULT VPC
- PEERING ROUTES IN ACCEPTOR AND REQUESTOR ROUTE TABLES 

# INPUTS
- project_name (mandatory) : user must supply their project name
- environment (mandatory) : user must supply their environment name
- vpc_cidr (mandatory) : user must supply their VPC cidr
- enable_dns_hostnames (optional) : defaults to true
- common_tags (optional) : default is empty, user can supply tags in list(string) format 
- vpc_tags (optional) : default is empty, user can supply tags in list(string) format
- igw_tags (optional) : default is empty, user can supply tags in list(string) format
- public_subnet_cidrs (mandatory) : user must supply only 2 valid public subner cidr
- public_subnet_tags (optional) : default is empty, user can supply tags in list(string) format
- private_subnet_cidrs (mandatory) : user must supply only 2 valid database subnet cidr
- private_subnet_tags (optional) : default is empty, user can supply tags in list(string) format
- database_subnet_cidrs (mandatory) : user must supply only 2 valid public subner cidr
- database_subnet_tags (optional) : default is empty, user can supply tags in list(string) format
- db_subnet_group_tags (optional) : default is empty, user can supply tags in list(string) format
- nat_gateway_tags (optional) : default is empty, user can supply tags in list(string) format
- public_routetable_tags (optional) : default is empty, user can supply tags in list(string) format
- vpc_peering_tags (optional) : default is empty, user can supply tags in list(string) format

# OUTPUTS
- vpc_id: VPC ID created
- public_subnet_id : list of 2 public subnet ids created
- private_subnet_id : list of 2 private subnet ids created
- database_subnet_id : list of 2 database subnet ids created 