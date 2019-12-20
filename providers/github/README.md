# GitHub Provider

Terraform Github provider needs a personal access token, so [Generate one](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line) in order to manage for your account.


Make sure to select the right scopes/permissions you'd like to grant this token, for our case:

* repo
* admin:org
* delete_repo


### TODO List

- [x] github_team
- [x] github_team_repository
- [x] github_team_membership
- [ ] github_branch_protection
- [ ] Required 2FA
