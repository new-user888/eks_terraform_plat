output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_route_table_id" {
  value = module.vpc.public_route_table_id
}

#output "rds_endpoint" {
#  value = module.rds.rds_endpoint
#}

#output "cluster_endpoint" {
# value = module.eks.cluster_endpoint
#}

#output "cluster_name" {
#  value = module.eks.cluster_name
#}