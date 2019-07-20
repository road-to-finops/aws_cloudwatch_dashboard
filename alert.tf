provider "aws" {
  profile = "<profile_name>"
  region  = "eu-west-1"
}


resource "aws_cloudwatch_event_rule" "console" {
  name        = "high-low-ec2"
  description = "Capture ec2s high and low Utilization"
  
  event_pattern = <<PATTERN
	{
  "source": [
    "aws.trustedadvisor"
  ],
  "detail-type": [
    "Trusted Advisor Check Item Refresh Notification"
  ],
  "detail": {
    "check-name": [
      "Low Utilization Amazon EC2 Instances",
      "High Utilization Amazon EC2 Instances"
    ]
  }
}
PATTERN
}

resource "aws_cloudwatch_event_target" "sns" {
  rule      = "${aws_cloudwatch_event_rule.console.name}"
  target_id = "SendToSNS"
  arn       = "${aws_sns_topic.aws_logins.arn}"
}

resource "aws_sns_topic" "aws_logins" {
  name = "high-low-ec2"
}