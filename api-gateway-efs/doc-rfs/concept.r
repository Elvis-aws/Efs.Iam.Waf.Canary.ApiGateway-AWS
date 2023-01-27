


***
EFS
***
        - Amazon EFS provides scalable file storage for use with Amazon EC2. You can use an EFS file system as a
          common data source for workloads and applications running on multiple instances
        - You can create an EFS file system and mount it to your instance when you launch your instance using the
          Amazon EFS Quick Create feature of the Amazon EC2 launch instance wizard. When you create an EFS file
          system using EFS Quick Create, the file system is created with the following service recommended settings:
            - Automatic backups turned on
            - Mount targets in each default subnet in the selected VPC, using the VPCs default security group
            - General Purpose performance mode
            - Bursting throughput mode
            - Encryption of data at rest enabled using your default key for Amazon EFS (aws/elastic-filesystem)
            - Amazon EFS lifecycle management enabled with a 30-day policy
            - Its always created in a VPC
            - If you wish to access from on-premise, make sure you select a VPC that you can connect to using
              your VPN or direct connect