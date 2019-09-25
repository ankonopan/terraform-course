provider "aws" {
  access_key = "AKIAS67KGPQ35PMXP62X"
  secret_key = "+dcYQj4E8aF2wX8OP2ozkfXLRTU/axDcyvlt7xtt"
  region     = "eu-central-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0085d4f8878cddc81"
  instance_type = "t2.micro"
}
