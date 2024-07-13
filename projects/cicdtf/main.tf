module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source = "./web1"
  sn = module.vpc.pb_sn
  sg = module.vpc.sg
}
