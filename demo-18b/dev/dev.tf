module "main-vpc" {
  source     = "../modules/vpc"
  ENV        = "dev"
  AWS_region = "${var.AWS_REGION}"
  profile    = "josetonyp"
}

module "instances" {
  source         = "../modules/instances"
  ENV            = "dev"
  VPC_ID         = "${module.main-vpc.vpc_id}"
  PUBLIC_SUBNETS = ["${module.main-vpc.public_subnets}"]
}
