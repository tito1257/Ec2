variable "ami_id"{
type = string
description = "Ami ID"


}

variable "instance_type"{
    type = string
    description = "Ec2 instance type"
}

variable "availability_zone"{
    type = string
    description = "availability zone"
}

variable "tags"{
    type = map(string)
    description = "Tags"
}

variable "security_group_name"{
    type = string
    description = "Sg_name"
}
variable "sg_tags"{
    type = map(string)
    description = "Tag for SG"
}

variable "security_group_description"{
    type = string
    description = "Sg description"
}

variable "security_group_inbound_rules"{
    type = list(object({
        from_port = number
        to_port = number
        description = string
        protocol = string
        cidr_blocks = list(string)

    }))
    description = "Security Group Inbound Rules"
    
}
