variable "name" {
    description = "Opsgenie team name"
    type = string
}
variable "desription" {
    description = "team description"
    type = string
}
variable "members" {
    description = "list of members"
    type = map{string}
}
