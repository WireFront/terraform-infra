output "queue_url" {
  value = aws_sqs_queue.my_queue.id
}

output "dlq_url" {
  value = aws_sqs_queue.my_queue_dlq.id
}

output "lambda_arn" {
  value = aws_lambda_function.my_lambda.arn
}

output "sqs_policy_arn" {
  value = aws_iam_policy.sqs_policy.arn
}
