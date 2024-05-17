resource "aws_security_group" "ade_app_sg" {
  name        = "ade_app_sg"
  description = "sg to allow access to app"
  vpc_id      = "vpc-07f2d83f135c4840e"
}
resource "aws_security_group_rule" "ingress_ssh_rule" {
  type              = "ingress"
  description       = "ssh access"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.ade_app_sg.id
}
resource "aws_security_group_rule" "egress_ssh_rule" {
  type              = "egress"
  description       = "ssh access"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.ade_app_sg.id
}

resource "aws_security_group_rule" "ingress_http_rule" {
  type              = "ingress"
  description       = "http access"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.ade_app_sg.id
}