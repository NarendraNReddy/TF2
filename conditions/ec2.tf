resource "aws_instance" "DB" {
  ami                     = var.image_id
  instance_type           = var.instant_name == "db" ? "t3.small" : "t3.micro"
  #vpc_security_group_ids=[aws_security_group.allow_ssh.id]

  tags = var.tags

}