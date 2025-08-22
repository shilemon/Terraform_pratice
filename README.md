# Terraform Practice Repository  

This repository contains **Terraform code** for practicing AWS infrastructure management. It demonstrates deploying and managing **EC2 instances**.  

## Prerequisites  
- **Terraform** installed → [Download](https://www.terraform.io/downloads)  
- **AWS Account**  
- **AWS CLI** configured (`aws configure`)  

## Setup  

1. **Clone the repo**  
   ```bash
   git clone https://github.com/shilemon/Terraform_pratice.git
   cd Terraform_pratice
   ```  

2. **Configure AWS Credentials**  
   - Option 1: In `terraform.tfvars`  
     ```hcl
     aws_access_key = "your-access-key"
     aws_secret_key = "your-secret-key"
     aws_region     = "us-west-2"
     ami            = "ami-0933f1385008d33c4"
     instance_type  = "t3.micro"
     ```  
   - Option 2: Environment variables  
     ```bash
     export AWS_ACCESS_KEY_ID="your-access-key"
     export AWS_SECRET_ACCESS_KEY="your-secret-key"
     export AWS_REGION="us-west-2"
     ```  

## Usage  

```bash
terraform init     # Initialize project  
terraform plan     # Preview resources  
terraform apply    # Create resources  
terraform destroy  # Delete resources  
```  

## Example Output  
```hcl
ec2_public_ip = {
  "0" = "54.213.222.11"
  "1" = "54.213.222.12"
}
```  

## File Structure  
```
/Terraform_pratice
 ├─ main.tf           # Main configuration
 ├─ terraform.tfvars  # Variables
 ├─ .gitignore
 ├─ .terraformignore
 └─ README.md
```  

## Notes  
- Use `.gitignore` & `.terraformignore` to avoid pushing sensitive files.  
- Run `terraform destroy` to clean up resources.  
