variable "ami_id" {
    type        = string
    default     = "ami-09c813fb71547fc4f"
    description = "This the AMI ID of devops-practice which is RHEL"
}

variable "instance_type"{
    type = string
    default = "t3.micro"
    description = ""
}

variable "tags"{
    type = map
    default = {
        Name = "backend"
        Project = "expense"
        Compenent = "backend"
        Environment = "DEV"
        Terraform = "true"
    }

}

variable "sg_name"{
    default = "Allow SSH1"
}

variable "sg_description"{
    default = "Allow port no 22 for SSH access"
}

variable "from port"{
    default = 22
    type = number
}

variable "to port"{
    default = 22
    type = number
}

variable "protocol"{
    default = "tcp"
}

variable "ingress_cidr"{
    type = list(string)
    default = ["0.0.0.0/0"]
}