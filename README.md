Terraform Practice Repository
This repository contains Terraform code for practicing and managing infrastructure on AWS. The project demonstrates how to deploy and manage resources like EC2 instances using Terraform.

Project Overview
AWS Region: us-west-2 (You can change the region in terraform.tfvars)
Resources:
EC2 instances (aws_instance)
Terraform provider for AWS (aws)
Prerequisites
Before using this Terraform configuration, ensure that the following prerequisites are met:

Terraform: Make sure Terraform is installed on your system. You can download it from the official Terraform website.
AWS Account: You need an AWS account to create and manage resources.
AWS CLI: Ensure that the AWS CLI is installed and configured on your machine for managing AWS credentials.
Setup
1. Clone the Repository
Clone the repository to your local machine:

git clone https://github.com/shilemon/Terraform_pratice.git
cd Terraform_pratice
2. Configure AWS Credentials

There are two recommended ways to configure your AWS credentials:

Option 1: Using terraform.tfvars File

Add your AWS credentials in the terraform.tfvars file:

aws_access_key = "your-access-key"
aws_secret_key = "your-secret-key"
aws_region     = "us-west-2"
ami            = "ami-0933f1385008d33c4"
instance_type  = "t3.micro"


Option 2: Using Environment Variables

Set your AWS credentials as environment variables on your machine:

export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"
export AWS_REGION="us-west-2"


Or, configure the AWS CLI with:

aws configure

3. Initialize Terraform

Run the following command to initialize the Terraform working directory, download provider plugins, and set up the environment:

terraform init


This will prepare your directory for Terraform and install the necessary provider plugins.

4. Review the Plan

Run terraform plan to see what actions Terraform will perform based on the configuration:

terraform plan


Terraform will display a preview of the actions it will take (create, update, or destroy resources). This is a safe way to verify what changes will be made.

5. Apply the Configuration

Run terraform apply to create the resources defined in the configuration:

terraform apply


Terraform will prompt you for confirmation to apply the plan. Type yes to proceed.

This command will create the EC2 instances, configure them according to the main.tf file, and output the public IP addresses of the instances.

Example Output

After running terraform apply, you will see an output like this:

Outputs:

ec2_public_ip = {
  "0" = "54.213.222.11"
  "1" = "54.213.222.12"
  "2" = "54.213.222.13"
}

6. Destroy Resources

If you no longer need the resources created by Terraform, you can destroy them using the following command:

terraform destroy


This will prompt you for confirmation. Type yes to proceed. This command will remove all resources defined in the main.tf file, such as the EC2 instances.

.gitignore and .terraformignore

.gitignore: This file ensures that sensitive information (such as AWS credentials) and large files (like terraform.exe) are not pushed to the remote repository.

.terraformignore: This file prevents Terraform from tracking files that should not be part of the Terraform state or project.

Terraform File Structure

Here’s an overview of the project file structure:

/Terraform_pratice
|-- .gitignore
|-- .terraformignore
|-- main.tf          # Main Terraform configuration
|-- terraform.tfvars # Terraform variables (credentials, region, etc.)
|-- README.md        # Project documentation
|-- .gitlab-ci.yml   # (Optional) CI/CD configuration

Troubleshooting
Error: Large File Detected

If you encounter an error related to large files, ensure that .gitignore and .terraformignore files are correctly configured to exclude large files like terraform.exe and .terraform/ directories.

For more information about Git LFS (Large File Storage), refer to Git LFS Documentation
.

Additional Resources

Terraform Documentation

AWS EC2 Instance Types

Gitignore Template

Git LFS Documentation


### Key Points:
1. **Initialization** (`terraform init`): Prepares your working directory for Terraform by downloading necessary provider plugins.
2. **Applying Configuration** (`terraform apply`): Creates or updates infrastructure based on the configuration defined in the Terraform files.
3. **Destroy Resources** (`terraform destroy`): Removes the resources created by Terraform, cleaning up the infrastructure.
4. **Git Ignore & Terraform Ignore**: Ensures sensitive files and large files are not tracked by Git or Terraform.

