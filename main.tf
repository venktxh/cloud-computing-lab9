terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }
}

variable "gateway" {
  default = "http://127.0.0.1:8080"
}

resource "null_resource" "deploy_openfaas" {
  provisioner "local-exec" {
    command = "curl.exe -u admin:${var.password} -X PUT ${var.gateway}/system/functions -H Content-Type:application/json --data-binary @${path.module}/request.json"
  }
}