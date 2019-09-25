terraform {
  backend "s3" {
    bucket   = "terra-demo-3"
    region   = "eu-central-1"
    key      = "terraform/demo3"
    profile  = "josetonyp"
  }
}