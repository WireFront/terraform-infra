resource "aws_sqs_queue" "my_queue" {
  name                      = "my-queue"
  delay_seconds             = 0
  max_message_size          = 262144
  message_retention_seconds = 345600  # 4 days
  visibility_timeout_seconds = 30
  receive_wait_time_seconds = 0
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.my_queue_dlq.arn
    maxReceiveCount     = 5
  })

  tags = {
    Name: "test-sqs"
  }
}

resource "aws_sqs_queue" "my_queue_dlq" {
  name                      = "my-queue-dlq"
  delay_seconds             = 0
  max_message_size          = 262144
  message_retention_seconds = 345600  # 4 days
  visibility_timeout_seconds = 30
}