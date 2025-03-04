# export the s3 topic arn
output "sns_topic_arn" {
  value = aws_sns_topic.user_updates.arn
}

