output "ssh_key_github" {
  value = {
    content = {
      id  = github_user_ssh_key.gitops.id
      url = github_user_ssh_key.gitops.url
    }
  }
  description = "Output SSH Key created in GitHub"
}

output "ssh_key_gitlab" {
  value = {
    content = {
      id            = gitlab_deploy_key.gitops.id
      deploy_key_id = gitlab_deploy_key.gitops.deploy_key_id
    }
  }
  description = "Output SSH Key created in GitLab"
}
