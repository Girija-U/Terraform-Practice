variable "mapex" {
  type = map(any)
}

variable "mapex2" {
  type = map(string)
}

variable "tupleex" {
  type = tuple([string, number, bool])
}

variable "objectex" {
  type = object({
    name   = string
    id     = number
    active = bool
  })
}
