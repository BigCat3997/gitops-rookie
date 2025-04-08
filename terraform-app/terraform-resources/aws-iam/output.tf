output "iam_getter" {
  value = {
    id   = aws_iam_role.new_resource.id
    name = aws_iam_role.new_resource.name
    arn  = aws_iam_role.new_resource.arn
  }
}
