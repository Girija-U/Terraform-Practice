data "local_file" "d1" {
  filename = "/home/giri/batch11/ex.sh"
}

output fc {
  value = data.local_file.d1.content
}
