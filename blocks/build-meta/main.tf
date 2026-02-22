terraform {
  required_version = ">= 1.5.0"
}

variable "tag" {
  type    = string
  default = "api"
}

resource "terraform_data" "build_meta" {
  input = {
    tag = var.tag
  }
}

output "meta" {
  value = terraform_data.build_meta.input
}
