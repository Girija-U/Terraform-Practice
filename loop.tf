locals {
  filename_upper = [for value in var.filename : upper(value)]
  map_keys       = [for key, value in var.filnamemap : upper(key)]
  map_values     = [for key, value in var.filnamemap : upper(value)]
  map_upper      = { for key, value in var.filnamemap : upper(key) => upper(value) }
}


output "a1" {
  value = local.filename_upper
}
output "a2" {
  value = local.map_keys
}
output "a3" {
  value = local.map_values
}
output "a4" {
  value = local.map_upper
}


variable "filename" {
  type    = list(string)
  default = ["a", "b", "c"]
}
resource "local_file" "f8" {
  count    = length(local.filename_upper)
  filename = local.filename_upper[count.index]
  content  = "test"
}

variable "filnamemap" {
  type = map(string)
  default = {
    name    = "a"
    address = "b"
  }
}
