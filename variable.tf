variable "project_name" {
    type = string
}

variable "environment" {
    type = string
    default = "dev"
}

variable "commom_tags" {
    type = map
}

variable "cidr_vpc" {
    type = string
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = "true"
}

variable "vpc_tags" {
    type = map
    default = {}
}

variable "gw_tags" {
    type = map
    default = {}
    
}
# public subnet varuable
variable "public_subnet_cidrs"{
    type = list
validation {
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "please provide 2 valid public subnet CIDR"
}


}

variable "public_subnet_cidr_tags" {
    type = map 
    default = {}
}

# private subnet varuable
variable "private_subnet_cidrs"{
    type = list
validation {
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "please provide 2 valid private subnet CIDR"
}


}

variable "private_subnet_cidr_tags" {
    type = map 
    default = {}
}

# database subnet variable
variable "database_subnet_cidrs"{
    type = list
validation {
    condition = length(var.database_subnet_cidrs) == 2
    error_message = "please provide 2 valid database subnet CIDR"
}


}

variable "database_subnet_cidr_tags" {
    type = map 
    default = {}
}

# nat_gateway

variable "nat_gateway_tags" {
    type = map
    default = {}

}

# public route_table

variable "public_route_table_tags" {
    type = map
    default = {}
}

# private route_table

variable "private_route_table_tags" {
    type = map
    default = {}
}

# database route_table

variable "database_route_table_tags" {
    type = map
    default = {}
}