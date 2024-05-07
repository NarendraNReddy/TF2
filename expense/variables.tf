variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI ID" #optional  
}

variable "instance_type" {
    type=string
    default = "t3.micro"
 
}

variable "instant_names" {
    type=list 
    default=["db","backend","frontend"]
  
}
variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        terraform=true

        # Module = "DB"
        # Name = "DB"
    }

}    

variable "sg_name" {
      default = "allow_ssh"
             
}

variable "sg_description" {
        default = "Allow SSH inbound traffic and all outbound traffic"      
}

variable "ssh_port" {
        default = 22
      
}

variable "ssh_protocol" {
        default = "tcp"
      
}

variable "ssh_allow_cidr" {
      type=list(string)
      default = ["0.0.0.0/0"]
}  

