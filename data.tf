data "aws_availability_zones" "available" {    #this will bring all the availability zones in us-east-1 region mentioned in provider.tf file
    state = "available"    
}

data "aws_vpc" "default" {
    default = true
}

data "aws_route_table" "main" {
    vpc_id = data.aws_vpc.default.id 
    filter {
        name = "association.main"
        values = ["true"]
    }
}