terraform {
  backend "s3" {
    bucket               = "androzo-terraform-tfstate"           # Replace with your S3 bucket name
    key                  = "devops/iam-permission-boundaries.tfstate" # Path to the state file in the folder
    workspace_key_prefix = "devops"                         # Prefix for workspaces
    region               = "sa-east-1"
    encrypt              = true
  }
}

