# RDS Multi-AZ failover test

1. Confirm `rds_multi_az` is `true` in Terraform variables and the console.
2. Record the primary and secondary Availability Zones.
3. Use the RDS console's reboot-with-failover operation during a controlled test window.
4. Observe the RDS events and the short connection interruption.
5. Verify that the application reconnects to the same RDS endpoint after failover.
6. Record the observed start and recovery timestamps.

Multi-AZ improves availability; it does not make the standby a read replica.
