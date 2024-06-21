resource "local_file" "cyberpunk" {
  filename     = var.filename
  content  = var.content
}

resource "local_file" "variabledemo" {

  for_each = local.combined
  filename = each.value
  content = each.key
  
}