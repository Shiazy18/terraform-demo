variable "listdemo" {
  type    = list(string)
  default = ["app1.txt", "app2.txt", "app3.txt", "app4.txt"]
}

variable "mapdemo" {
  type    = map(string)
  default = {
    "key1" = "value1"
    "key2" = "value2"
    "key3" = "value3"
    "key4" = "value4"
  }
}

locals {
  combined = { for idx, fname in var.listdemo : fname => values(var.mapdemo)[idx] }
}