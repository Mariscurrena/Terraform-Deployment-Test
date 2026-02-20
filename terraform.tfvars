# Best Practice: On 'tfvars' the variable content is defined.ohio_cidr 
# 'terraform.tfvars' or 'terraform.tfvars.json' must follow the nomenclature for automate assignation
# Exceptions '*.auto.tfvars' or '*.auto.tfvars.json'

virginia_cidr = "10.10.0.0/16"
# public_subnet = "10.10.0.0/24"
# private_subnet = "10.10.1.0/24"
subnets = ["10.10.0.0/24", "10.10.1.0/24"]

tags = {
  "env"         = "dev"
  "owner"       = "steve"
  "cloud"       = "AWS"
  "IAC"         = "terraform"
  "IAC_Version" = "1.14.4"
  "project"     = "cerberus"
  "region"      = "Virgin"
}

sg_ingress_cidr = "0.0.0.0/0"

ec2_specs = {
  "ami"           = "ami-0532be01f26a3de55"
  "instance_type" = "t3.micro"
}
####========TYPES-OF-VARIABLES=============#####
# * numbers, strings, booleans, list
# * lists:
# ***** map
# ***** set
# ***** array
# ***** tuple
# ***** Output - Not a real variable / Most common Public IP Address
# output "linux_public_ip"{
#     value = aws_instance.linux.IP
#     description = "Shows the Public IP"
# }
######## 'terraform output' - 'terraform output linux_public_ip'
### -- Attributes reference (Terraform Registry) -- Gives all the info about what can be exposed.

# CONDITIONALS VARIABLES
# enable_monitoring = true # State to deploy or not the monitoring instance
enable_monitoring = 0

ingress_port_list = [22, 80, 443]