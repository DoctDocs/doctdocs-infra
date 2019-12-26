resource "github_branch_protection" "infra" {
  repository        = "${github_repository.infra.name}"
  branch             = "master"
  enforce_admins    = false
}
