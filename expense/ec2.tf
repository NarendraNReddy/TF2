resource "aws_instance" "DB" {
  count=length(var.instant_names)  
  ami                     = var.image_id
  instance_type           = var.instant_names[count.index] == "db" ? "t3.small" : "t3.micro"
  vpc_security_group_ids=[aws_security_group.allow_ssh.id]

  tags = merge(
    var.common_tags,
    {
      Name = var.instant_names[count.index]
      Module = var.instant_names[count.index]
    }
  )

}

resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description

    ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.ssh_protocol
    cidr_blocks      = var.ssh_allow_cidr
  }

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.ssh_allow_cidr
  }


  tags = {
    Name = "allow_ssh"
    CreatedBy="NNR"
  }
}