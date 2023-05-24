

************************
EFS Lifecycle Management
************************
        - EFS lifecycle management automatically manages cost-effective file storage for the file systems
        - When enabled, lifecycle management migrates files that haven’t been accessed for a set period of time to an
          infrequent access storage class, Standard-IA or One Zone-IA
        - Lifecycle Management automatically moves the data to the EFS IA storage class according to the lifecycle
          policy. for e.g., you can move files automatically into EFS IA fourteen days after not being accessed
        - Lifecycle management uses an internal timer to track when a file was last accessed and not the POSIX file
          system attribute that is publicly viewable
        - Whenever a file in Standard or One Zone storage is accessed, the lifecycle management timer is reset
        - After lifecycle management moves a file into one of the IA storage classes, the file remains there
          indefinitely if EFS Intelligent-Tiering is not enabled