# aws_cloudwatch_ec2_util
A terraform file for an AWS Cloudwatch Dashboard for CPU util and a sns topic to subscribe to if goes either way


his module provides the following:
 - Cloud Watch Dashboard
 - Cloud Watch Event
 - SNS Topic

## Usage
Update Profile 
```
module "aws_ec2_util" {
  source                  = ""
}
```

