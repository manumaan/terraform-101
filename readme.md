**Terraform Commands**

terraform init - Checks the current folder, initializes the backend which is the storage of all the configs and providers, modules. <br>
terraform fmt - formats the .tf files <br>
terraform validate - validates syntax and makes sure of internal correctness <br>
terraform show - prints the values from the backend <br>
terraform plan - creates execution plan from the .tf files and  shows what will happen if we apply the configuration <br>
terraform apply - applies the configuration (provisions the infra) <br>
terraform destroy - tear downs the configuration             


**Install Terraform on Mac**<br>
brew tap hashicorp/tap<br>
brew install hashicorp/tap/terraform<br>
brew update<br>
brew upgrade hashicorp/tap/terraform<br>
terraform -version<br>

**Terminology**<br>
Provider - plugin that provides integration with infra provider like AWS. <br>
Resource - an infra  resource  terraform will provision, like AWS EC2 <br>
Module - for modular code, you can group code for one purpose in one module, like all code for a Dev Instance. <br>
Inputs - input variables in terraform. Referred as var.xyz <br>
Outputs - output  variables in terraform <br>
Locals - local variables created using values available within terraform context at runtime. Referred as local.xyz <br>
Data - allows to query for data emitted from providers. like aws_availability_zones list from AWS <br>


**Sensitive values** <br>
For sensitive values like password, you can define variable as sensitive, which will redact the value from outputs from terraform outputs. <br>
These variables can be read from a .tfvars  file OR from environment variables starting with TF_VAR  <br>
sensitive variable values are stored as plain text in terraform state, so state should be secured. <br>

**Dependancies** <br>
implicit - if a resource is mentioned in another resource,terraform will automatically create first resource before  creating next one. <br>
explicit - depends_on keyword can be used inside resource to denote the dependancy. <br>

**Troubleshooting** <br>
use terraform fmt and validate commands to find syntactical and  logical errors in your  tf code. <br>
TF_LOG_CORE, TF_LOG_PROVIDER, TF_LOG_PATH environment variables can be set to create log files. <br>
