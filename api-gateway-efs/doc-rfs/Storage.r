


*******************
EFS Storage Classes
*******************
        **********************
        Standard storage class
        **********************
            - EFS Standard and Standard-Infrequent Access (Standard-IA), offer multi-AZ resilience and the highest
              levels of durability and availability
            - For file systems using Standard storage classes, a mount target can be created in each availability
              Zone in the AWS Region
        ********
        Standard
        ********
        - Regional storage class for frequently accessed data
        - Offers the highest levels of availability and durability by storing file system data redundantly across
          multiple AZs in an AWS Region
        - Ideal for active file system workloads and you pay only for the file system storage you use per month
        ****************************************
        Standard-Infrequent Access (Standard-IA)
        ****************************************
        - Regional, low-cost storage class that’s cost-optimized for files infrequently accessed i.e. not
          accessed every day
        - Offers the highest levels of availability and durability by storing file system data redundantly across
          multiple AZs in an AWS Region
        - Cost to retrieve files, lower price to store
        ************************
        One Zone storage classes
        ************************
        - EFS One Zone and One Zone-Infrequent Access (One Zone-IA) offer additional savings by saving the data in a
          single AZ
        - For file systems using One Zone storage classes, only a single mount target that is in the same Availability
          Zone as the file system needs to be created
        ************
        EFS One Zone
        ************
        - For frequently accessed files stored redundantly within a single AZ in an AWS Region
        *****************************
        EFS One Zone-IA (One Zone-IA)
        *****************************
        - A lower-cost storage class for infrequently accessed files stored redundantly within a single AZ in an
          AWS Region