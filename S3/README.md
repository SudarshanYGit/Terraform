Backend Setup (Remote State Configuration)

The backend configuration defines a remote Terraform backend using Amazon S3 and DynamoDB. The S3 bucket is used to store the Terraform state file securely with encryption and versioning enabled, while DynamoDB provides state locking to prevent concurrent Terraform operations. This setup ensures centralized state management, improves collaboration, and protects the state file from corruption or accidental overwrites.

Main Infrastructure Configuration

The main infrastructure configuration provisions the AWS resources required for the Terraform backend. It creates a private S3 bucket with public access blocked, server-side encryption enabled, versioning turned on, and lifecycle rules to clean up old object versions. It also provisions a DynamoDB table configured for on-demand billing to manage Terraform state locks. Together, these resources form a secure and production-ready foundation for Terraform remote state management.