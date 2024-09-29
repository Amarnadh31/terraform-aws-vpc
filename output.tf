output "vpc_id" {
    value = aws_vpc.main.id

}

output "public_subnet_ids" {
    value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
    value = aws_subnet.private[*].id
}

output "database_subnet_ids" {
    value = aws_subnet.database[*].id
}

output "public_route_id" {
    value = aws_route_table.public.id
}

output "private_route_id" {
    value = aws_route_table.private.id
}

output "database_route_id" {
    value = aws_route_table.database.id
}

# output "az_id" {
#     value = data.aws_availability_zones.available
# }