# dev infra

module "dev_module" {
 source = "./Resources"
 env = "dev"
 aws_ec2_type = "t2.micro"
 aws_ec2_count = 1

}

# prod infra
module "prd_module" {
 source = "./Resources"
 env = "prd"
 aws_ec2_type = "t2.small"
 aws_ec2_count = 2  
}

