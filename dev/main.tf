provider "aws" {
  region = "eu-west-1"
}

module "my_vpc" {
    source = "../modules/vpc"
    vpc_cidr = "192.168.0.0/16"
    tenancy = "default"
    vpc_id = "${module.my_vpc.vpc_id}"
    subnet_cidr = "192.168.1.0/24"
    

}


module "my_ec2" {
    source = "../modules/ec2"
    ec2_count = 1
    instance_type = "t2.micro"
    subnet_id = "${module.my_vpc.subnet_id}"
    ami_id = "ami-08edbb0e85d6a0a07"
    tag_name =  "dev_web"
}