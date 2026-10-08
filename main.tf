terraform {
  required_providers {

    github = {
      source  = "integrations/github"
      version = "~>6.0"
    }
  }
}

provider "github" {
  owner = "rafi1945"
}

resource "github_repository" "new_repo" {
  name        = "terraform_repo"
  description = " repository created using terraform "

  visibility = "public"
  auto_init  = true
}

output "repository_url" {

  value = github_repository.new_repo.html_url

}



