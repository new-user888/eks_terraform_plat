module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block

  public_cidr_block        = var.public_cidr_block
  public_availability_zone = var.public_availability_zone

  public_cidr_block_1        = var.public_cidr_block_1
  public_availability_zone_1 = var.public_availability_zone_1

  private_cidr_block        = var.private_cidr_block
  private_availability_zone = var.private_availability_zone

  db_cidr_block        = var.db_cidr_block
  db_availability_zone = var.db_availability_zone
}

module "rds" {
  source             = "./modules/rds"
  security_group_ids = [module.vpc.rds_sg_id]
  db_username        = "postgres"
  db_password        = var.db_password
  db_subnet_ids      = module.vpc.db_subnet_ids
}

module "eks" {
  source           = "./modules/eks"
  cluster_name     = var.cluster_name
  cluster_role_arn = var.cluster_role_arn
  node_role_arn    = var.node_role_arn
  subnet_ids = [
    module.vpc.public_subnet_id,
    module.vpc.private_subnet_id
  ]
}
