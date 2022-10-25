resource "aws_sagemaker_notebook_instance" "ni" {
  name          = "my-notebook-instance"
  role_arn      = aws_iam_role.role.arn
  instance_type = "ml.t2.medium"
  subnet_id     = var.subnet_id

  tags = {
    Name = "foo"
  }
}
