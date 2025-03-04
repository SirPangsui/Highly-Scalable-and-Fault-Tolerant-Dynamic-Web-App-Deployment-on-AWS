# create an sns topic
resource "aws_sns_topic" "user_updates" {
  name      = "${var.project_name}-${var.environment}-sns-topic"
}

# create an sns topic subscription
resource "aws_sns_topic_subscription" "notification_topic" {
  topic_arn = aws_sns_topic.user_updates.arn
  protocol  = "email"
  endpoint  = var.sns_topic_email
}