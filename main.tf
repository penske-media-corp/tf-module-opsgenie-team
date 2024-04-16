resource "opsgenie_team" "this" {
  name              = "each.name"
  description       = "each.description"
  member            = "each.member"
}
/* THIS SECTION CAN BE UNCOMMENTED IF A TEAM MANAGED OUTSIDE OF TERRAFORM IS TO BE REFERENCED
resource "opsgenie_team" "self-service" {
  name           = "Self Service"
  description    = "Membership in this team is managed via OpsGenie web UI only"
  ignore_members = true
  delete_default_resources = true
}
*/