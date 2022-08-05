Terraform Commands:

terraform init - Checks the current folder, initializes the backend which is the storage of all the configs and providers, modules. 

terraform fmt - formats the .tf files 

terraform validate - validates syntax and makes sure of internal correctness 

terraform show - prints the values from the backend 

terraform plan - creates execution plan from the .tf files and  shows what will happen if we apply the configuration 

terraform apply - applies the configuration (provisions the infra)

terraform destroy - tear downs the configuration             


Install Terraform on Mac:
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew update
brew upgrade hashicorp/tap/terraform
terraform -version
