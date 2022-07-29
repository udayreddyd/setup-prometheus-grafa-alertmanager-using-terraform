# Use this template to create a file env_vars and source it before running
terraform.
### Region
export TF_VAR_region="us-phoenix-1"
### Public/private keys used on the instance
export TF_VAR_ssh_public_key=$(cat ~/xperiment_rsa.pub)
export TF_VAR_ssh_private_key=$(cat ~/xperiment_rsa)
## NOTE: These are not your api keys. More info on the right keys see
## https://docs.oracle.com/en-us/iaas/Content/Compute/Tasks/
managingkeypairs.htm
## https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm
