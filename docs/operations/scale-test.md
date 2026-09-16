# Scale and self-healing test

1. Confirm that the Auto Scaling Group has two InService instances in different AZs.
2. Confirm that both instances are Healthy in the ALB Target Group.
3. Send repeated health requests with `scripts/load-test.sh` or use an SSM command to create CPU load.
4. Capture the scaling activity and the new instance in the EC2 console.
5. Terminate one instance from the console.
6. Confirm that the ASG launches a replacement and that the Target Group becomes Healthy again.

Record the timestamp, desired capacity, running capacity, and target health before and after each operation.
