resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "ec2-usage-dashboard"

  dashboard_body = <<EOF
{
    "widgets": [
        {
            "type": "metric",
            "x": 0,
            "y": 0,
            "width": 24,
            "height": 6,
            "properties": {
                "view": "timeSeries",
                "stacked": true,
                "metrics": [
                    [ "AWS/EC2", "CPUUtilization", "InstanceType" ]
                ],
                "region": "eu-west-1"
            }
        }
    ]
}
 EOF
}
