module "network" {
  source        = "./modules/network"
  project_name  = var.project_name
}

module "iam" {
  source        = "./modules/iam"
  project_name  = var.project_name
}

module "ecr" {
  source        = "./modules/ecr"
  project_name  = var.project_name
}

module "rds" {
  source        = "./modules/rds"
  project_name  = var.project_name
  db_password   = var.db_password
  vpc_id        = module.network.vpc_id
  subnet_ids    = module.network.db_subnets
}

module "ecs" {
  source             = "./modules/ecs"
  project_name       = var.project_name
  vpc_id             = module.network.vpc_id
  subnet_ids         = module.network.public_subnets
  db_endpoint        = module.rds.db_endpoint
  db_password        = var.db_password
  ecr_repo_url       = module.ecr.repository_url
  execution_role_arn = module.iam.execution_role_arn
  task_role_arn      = module.iam.task_role_arn
}


