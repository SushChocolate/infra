module "my_public_subnet_calling_module" {
    count = ( length(var.public_subnets) > 0 ) ? length(var.public_subnets) : 0
    # [ "10.80.0.0/28", "10.80.0.16/28", "10.80.0.32/28" ]
    #           0            1                 2
    source = "git@github.com:SushChocolategithub/terraform-modules.git//subnet/module?ref=main"
    vpc_id = module.myvpc_calling_module.myvpc_id
    subnet_cidr_block = var.public_subnets[count.index]
    project = "INFRA_TRAINING"  
}

module "my_private_subnet_calling_module" {
    count = ( length(var.private_subnets) > 0 ) ? length(var.private_subnets) : 0
    # [ "10.80.0.64/28", "10.80.0.96/28", "10.80.0.112/28" ]
    #           0            1                 2
    source = "git@github.com:SushChocolategithub/terraform-modules.git//subnet/module?ref=main"
    vpc_id = module.myvpc_calling_module.myvpc_id
    subnet_cidr_block = var.private_subnets[count.index]
    project = "INFRA_TRAINING"
}
