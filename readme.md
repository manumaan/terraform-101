**Terraform Commands**

terraform init - Checks the current folder, initializes the backend which is the storage of all the configs and providers, modules. 
terraform fmt - formats the .tf files 
terraform validate - validates syntax and makes sure of internal correctness 
terraform show - prints the values from the backend 
terraform plan - creates execution plan from the .tf files and  shows what will happen if we apply the configuration 
terraform apply - applies the configuration (provisions the infra)
terraform destroy - tear downs the configuration             


**Install Terraform on Mac**
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew update
brew upgrade hashicorp/tap/terraform
terraform -version

**Terminology**
Provider - plugin that provides integration with infra provider like AWS. 
Resource - an infra  resource  terraform will provision, like AWS EC2 
Module - for modular code, you can group code for one purpose in one module, like all code for a Dev Instance. 
Inputs - input variables in terraform. Referred as var.xyz
Outputs - output  variables in terraform 
Locals - local variables created using values available within terraform context at runtime. Referred as local.xyz
Data - allows to query for data emitted from providers. like aws_availability_zones list from AWS 


**Sensitive values**
For sensitive values like password, you can define variable as sensitive, which will redact the value from outputs from terraform outputs. 
These variables can be read from a .tfvars  file OR from environment variables starting with TF_VAR
sensitive variable values are stored as plain text in terraform state, so state should be secured. 

**Dependancies** 
implicit - if a resource is mentioned in another resource,terraform will automatically create first resource before  creating next one. 
explicit - depends_on keyword can be used inside resource to denote the dependancy. 

**Troubleshooting** 
use terraform fmt and validate commands to find syntactical and  logical errors in your  tf code. 
TF_LOG_CORE, TF_LOG_PROVIDER, TF_LOG_PATH environment variables can be set to create log files. 
