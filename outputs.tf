output "state_bucket_id" {
  value = aws_s3_bucket.backend.id
}

output "dynamo_lock_table" {
  value = aws_dynamodb_table.lock.id
}

output "iam_roles" {
  value = concat(
    aws_iam_role.backend-all.*.arn,
    aws_iam_role.backend-restricted.*.arn,
  )
}
