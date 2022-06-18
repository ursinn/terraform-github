terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
  experiments = [module_variable_optional_attrs]
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

# Repo Settings
module "github-repo" {
  source = "./modules/github-repo"

  repos            = var.github_repos
  branches         = var.github_branches
  default_branches = var.github_default_branches
}