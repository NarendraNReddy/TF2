variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI ID" #optional  
}

variable "instance_type" {
    type=string
    default = "t3.micro"
 
}

variable "instant_name" {
    type=string
    default="db1"
}

variable "tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    }

}   