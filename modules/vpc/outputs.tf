output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "public_subnet_id_01" {
  value = aws_subnet.public_01.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "db_subnet_ids" {
  value = [aws_subnet.db1.id, aws_subnet.db2.id]
}

output "public_route_table_id" {
  value = aws_route_table.public_route_table.id
}

output "rds_sg_id" {
  value = aws_security_group.rds_sg.id
}
