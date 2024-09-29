locals {
    resource_name = "${var.project}-${var.environment}"
    az_names = slice(data.aws_availability_zones.available.names, 0 , 2) # we need only 2 availability zone so used slice function
}