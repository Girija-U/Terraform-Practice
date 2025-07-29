resource "random_string" "random_str" {
  length  = 8
  special = false
}

resource "random_integer" "random_int" {
  min = 1
  max = 50
}

resource "random_pet" "random_pe" {
  length = 3
}

resource "random_password" "random_passwd" {
  length  = 5
  special = true
}

resource "random_id" "random_id" {
  byte_length = 8
}

resource "random_shuffle" "random_shuff" {
  input        = ["aaa", "bbb", "ccc", "ddd"]
  result_count = 2
}

resource "random_bytes" "random_byt" {
  length = 10
}
