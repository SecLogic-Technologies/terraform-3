# terraform-3 module

 1. Create **main.tf** file and put below code in **main.tf** file

```hcl
provider "aws" {
  region = "ap-south-1"
}

module "tf" {
  source     = "git::https://github.com/SecLogic-Technologies/terraform-3.git"
  ExternalId = "dhjhfdf8fsh7878erwmru394fnjd83uwfjzdlnf"  # Copy from cyberq dashboard
  CyberqArn  = "arn:aws:iam::123456789012:user/adminuser" # Copy from cyberq dashboard

}
output "role-arn" {
  description = "The ARN assigned by AWS to this role"
  value       = module.tf.role-arn
}

output "role-name" {
  description = "The name of the role"
  value       = module.tf.role-name
}
```

 2. Change **ExternalId** and **CyberqArn** in code
 3. `terraform init`
 4. `terraform plan`
 5. `terraform apply`
