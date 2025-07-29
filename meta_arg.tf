resource "local_file" "f3" {
  filename = "123.txt"
  content  = "testtdtd"
}



resource "local_file" "f2" {
  filename = "12325.txt"
  content  = local_file.f3.id
}
resource "local_file" "f4" {
  filename = local_file.f2.id
  content  = local_file.f3.id
}
resource "local_file" "f1" {
  filename = "15342541"
  content  = "shjkgjhkmhvggfbnvxjjg"
}

resource "local_file" "f5" {
  filename   = "rjgzhjb"
  content    = "sgfj"
  depends_on = [local_file.f4]
}



variable "filename" {
  type    = list(string)
  default = ["a", "b", "c"]
}
resource "local_file" "f8" {
  count    = length(var.filename)
  filename = var.filename[count.index]
  content  = "test"
}

resource "local_file" "f9" {
  filename = each.value
  for_each = toset(var.filename1)
  content  = "test"
}
variable "filename1" {
  type    = list(string)
  default = ["a1", "b1", "c1"]
}
