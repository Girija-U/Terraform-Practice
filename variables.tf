variable "filename" {
  default = "abc123.txt"
}

variable "content" {
  default = "content from default"
}

variable "filename1" {
  default = "abc2.txt"
}

variable "filename2" {
  default = "abc1.txt"
  type    = string
}

variable "filename3" {
  default = true
  type    = bool
}

variable "filename4" {
  default = 15
  type    = number
}

variable "content" {
  default = 10
  type    = any
}

variable "filename5" {
  type    = list(any)
  default = ["test", 123, true, "test", 123]
}

variable "filename6" {
  type    = list(number)
  default = [1, 2, 3, 4, 5, 2, 4, 7, 1, 2]
}

variable "filename7" {
  type = map(string)
  default = {
    name     = "adi"
    id       = "123"
    isactive = "yes"
  }
}

variable "filename8" {
  type = map(number)
  default = {
    id    = 12345
    phone = 43154431
  }
}

variable "filename9" {
  type    = tuple([string, number, bool, list(number)])
  default = ["adi", 123, true, [1, 2, 3]]
}

variable "filename10" {
  type = object({
    name    = string
    id      = number
    address = list(string)
  })
  default = {
    name    = "adi"
    id      = 123
    address = ["marathalli", "bangalore", "560037"]
  }
}


