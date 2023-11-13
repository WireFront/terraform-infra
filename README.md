# Setting Up Terraform with AWS

## Introduction
This guide provides step-by-step instructions to configure Terraform for managing resources in AWS.

### Prerequisites
- **Terraform Installed**: Install Terraform on your local machine. You can download it from [Terraform's official website](https://www.terraform.io/downloads.html).
- **AWS Account**: Access to an AWS account with appropriate permissions to create and manage resources.

## Steps
1. **AWS Configuration**
   - **AWS CLI Installation**: Install AWS CLI to configure credentials. Use `aws configure` command to set up access keys, secret keys, region, etc.
   
2. **Setting Up Terraform**
   - **Installation**: Download and install Terraform.
   
3. **Project Structure**
   - Create a project directory to organize your Terraform files.
   - Initialize the directory: `terraform init`.
   
4. **Initialize & Apply**
   - Run `terraform init` to initialize the configuration.
   - Use `terraform plan` to review the changes that Terraform will apply.
   - Apply changes: `terraform apply` to create or modify resources as defined.
5. **Cleanup**
   - After testing or when not needed, use `terraform destroy` to delete resources provisioned by Terraform.

## Additional Resources
- [Terraform Documentation](https://www.terraform.io/docs/index.html)
- [AWS Documentation](https://docs.aws.amazon.com/)
