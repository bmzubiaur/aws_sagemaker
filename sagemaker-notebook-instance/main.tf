data "aws_iam_policy_document" "sm_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]
    
    principals {
      type = "Service"
      identifiers = ["sagemaker.amazonaws.com"]
    }
  }
}


# Defining the SageMaker notebook IAM role
resource "aws_iam_role" "notebook_iam_role" {
  name = "sm_notebook_role"
  assume_role_policy = data.aws_iam_policy_document.sm_assume_role_policy.json
}

# Attaching the AWS default policy, "AmazonSageMakerFullAccess"
resource "aws_iam_policy_attachment" "sm_full_access_attach" {
  name = "sm-full-access-attachment"
  roles = [aws_iam_role.notebook_iam_role.name]
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
}

#creating the instance
resource "aws_sagemaker_notebook_instance" "ni" {
  name          = "my-notebook-instance"
  role_arn      = aws_iam_role.notebook_iam_role.arn
  instance_type = "ml.t2.medium"
  subnet_id     = var.subnet_id

  tags = {
    Name = "foo"
  }
}
