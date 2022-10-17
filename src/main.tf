terraform {
  required_providers {
    mysql = {
      source  = "petoju/mysql"
      version = "3.0.20"
    }
  }
}

provider "mysql" {
  endpoint = "mysql:3306"
  username = var.mysql_username
  password = var.mysql_password
}

resource "mysql_global_variable" "max_connections" {
  name  = "max_connections"
  value = "100"
}
