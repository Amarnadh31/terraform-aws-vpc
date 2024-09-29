variable "vpc_cidr"{
    default = "10.0.0.0/16" 
}

variable "enable_dns_hostnames" {
    default = true
}


variable "project" {
    type=string
}

variable "environment"{
    type=string
}

variable "common_tags"{
    default = {}
}

variable "vpc_tags" {
    default = {}
}

variable "public_subnet_cidr"{
    type = list
    validation{
        condition     = length(var.public_subnet_cidr) == 2
        error_message = "Please provide 2 valid public subnet CIDR" 
    }

}

variable "public_subnet_tags" {
    default = {}
}

variable "private_subnet_cidr"{
    type= list 
    validation{
        condition = length(var.private_subnet_cidr) ==2
        error_message = "please provide 2 valid private subnet cidr"
    }
}

variable "private_subnet_tags" {
    default = {}
}

variable "database_subnet_cidr" {
    type=list 
    validation{
        condition = length(var.database_subnet_cidr) == 2
        error_message = "please provide 2 valid database subnet cidrs"
    }
}

variable "database_subnet_tags" {
    default = {}

}

variable "nat_tags"{
    default = {}
}

variable "public_route_tags" {
    default = {}
}

variable "private_route_tags" {
    default = {}
}

variable "database_route_tags" {
    default = {}
}

variable "peering_required" {
    type = bool
    default = false
}