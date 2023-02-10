resource "null_resource" "this" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo `date` > commandoutput"
  }
}

data "local_file" "this" {
  filename = "commandoutput"
  depends_on = [
    null_resource.this
  ]
}