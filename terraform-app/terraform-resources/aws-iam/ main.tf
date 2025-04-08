resource "aws_iam_role" "new_resource" {
  name               = var.name
  assume_role_policy = file(var.policy_json_path)
  tags               = var.tags
}

resource "aws_iam_role_policy_attachment" "new_resource" {
  for_each   = toset(var.policy_arns)
  policy_arn = each.value
  role       = aws_iam_role.new_resource.name
}
