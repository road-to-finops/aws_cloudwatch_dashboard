# aws_cloudwatch_dashboard
A terraform file for an AWS Cloudwatch Dashboard for CPU util and a sns topic to subscribe to if goes either way


his module provides the following:
 - Cloud Watch Dashboard
 - Cloud Watch Event
 - SNS Topic

## Usage
```
module "aws_ec2_util" {
  source                  = ""
}
```

