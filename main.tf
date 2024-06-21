resource "local_file" "cyberpunk" {
  filename     = var.filename
  content  = var.content
}

resource "local_file" "variabledemo" {

  for_each = var.listdemo
  filename = each.value
  content = each.key
  
}