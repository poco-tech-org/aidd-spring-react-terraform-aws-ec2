# High-availability design

The final AWS topology uses two Availability Zones:

- An internet-facing Application Load Balancer has one public subnet in each AZ.
- An EC2 Auto Scaling Group launches application instances in private subnets across both AZs.
- RDS for PostgreSQL uses a Multi-AZ DB instance deployment in private database subnets.
- The application is stateless. Authentication is represented by the Cognito JWT rather than local server session state.

Auto Scaling handles compute capacity and replacement of unhealthy instances. RDS Multi-AZ provides database failover; it is not a read-scaling solution.
