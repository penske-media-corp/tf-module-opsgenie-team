
variable "name" {}
variable "member" {
  type = list(object({
    id =  string
    role    = string
  }))
}
variable "user_id" {
  default = ""
}
variable "role" {
  default = ""
}

resource "opsgenie_team" "this" {
  name = var.name

  # Loop through the passed members
  for_each = { for idx, member in var.members : idx => member }

  member = {
    id      = each.value.member.user_id
    role    = each.value.member.role
  }
}



/*


resource "opsgenie_team" "this" {
  name              = var.name
  description       = var.team_description
  member {
    id = each.value
    role = each.key
  }
}
*/

/* THIS SECTION CAN BE UNCOMMENTED IF A TEAM MANAGED OUTSIDE OF TERRAFORM IS TO BE REFERENCED
resource "opsgenie_team" "self-service" {
  name           = "Self Service"
  description    = "Membership in this team is managed via OpsGenie web UI only"
  ignore_members = true
  delete_default_resources = true
}
*/