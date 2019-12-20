resource "github_team_membership" "devops-team-membership" {
  team_id  = "${github_team.devops-team.id}"
  username = "safimed"
  role     = "member"
}

resource "github_team_repository" "devops-team-repo" {
  team_id    = "${github_team.devops-team.id}"
  repository = "${github_repository.infra.name}"
  permission = "push"
}
