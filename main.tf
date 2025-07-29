resource "local_file" "filecreation" {
  filename = var.filename
  content  = var.content
}

resource "local_file" "filecreation1" {
  filename = local.filename
  content  = local.content
}
