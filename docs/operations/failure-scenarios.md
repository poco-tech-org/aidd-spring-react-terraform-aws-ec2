# Failure scenarios and rollback

| Scenario | First evidence | Recovery expectation |
|---|---|---|
| EC2 process failure | systemd status and instance log | systemd restarts the process |
| EC2 instance termination | ASG activity history | ASG launches a replacement |
| ALB target unhealthy | Target Group health reason | Instance becomes Healthy after fixing startup or network configuration |
| RDS failover | RDS events and application connection log | The RDS endpoint resolves to the new primary |
| Terraform plan is unexpected | `terraform plan` diff | Stop, review the diff, and do not apply until understood |

Rollback is a deliberate decision. Do not use `terraform destroy` as a substitute for understanding an unexpected plan.
