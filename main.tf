resource "aws_instance" "ade_app" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = "demo-key"
  security_groups = [aws_security_group.ade_app_sg.name]
  tags = {
    Name = "ade_app.${var.environment}"
  }
}