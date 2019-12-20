resource "github_repository" "infra" {
  name          = "doctdocs-infra"
  description   = "Infrastructure as code using Terraform"
  has_downloads = false
  has_wiki      = true
  has_issues    = true
  private       = false

  topics = ["aws", "terraform"]

  lifecycle {
    prevent_destroy = true
  }
}
