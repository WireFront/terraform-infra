resource "aws_lambda_function" "my_lambda" {
  filename      = "lambda_function_payload.zip"
  function_name = "myLambdaFunction"
  handler       = "index.handler"
  runtime       = "nodejs14.x"

  environment {
    variables = {
      QUEUE_URL = aws_sqs_queue.my_queue.id
    }
  }

  # IAM Role for Lambda to access SQS
  role = aws_iam_role.lambda_role.arn
}
