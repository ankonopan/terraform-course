module "main-vpc" {
  source     = "../modules/vpc"
  ENV        = "prod"
  AWS_region = "${var.AWS_REGION}"
  profile    = "josetonyp"
}

module "instances" {
  source         = "../modules/instances"
  ENV            = "prod"
  VPC_ID         = "${module.main-vpc.vpc_id}"
  PUBLIC_SUBNETS = ["${module.main-vpc.public_subnets}"]
}
