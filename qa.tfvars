vpc_cidr_block = "172.31.0.0/16"

instance_count = 1

#ami_id = ami-0d2a4a5d69e46ea0b

instance_type = "t2.micro"

public_subnets = [ "10.80.168.0/28", "10.80.168.16/28", "10.80.168.32/28" ]

private_subnets = [ "10.80.168.64/28", "10.80.168.80/28", "10.80.168.96/28" ]
