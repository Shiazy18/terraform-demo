variable "listdemo" {
    type = list(string)
    default = [ "value1", "value2", "value3", "value4" ]
  
}

variable "mapdemo" {

    type = map(string)
    default = {
      "key1" = "value1"
      "key2" = "value2"
      "key3" = "value3"
      "key4" = "value4"
    }
  
}