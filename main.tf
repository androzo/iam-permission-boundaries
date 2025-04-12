module "team_anders_iam_permission_boundary" {
  source = "./modules/permission-boundary"
  team   = "team-anders"
}

module "team_drozer_iam_permission_boundary" {
  source = "./modules/permission-boundary"
  team   = "team-drozer"
}
