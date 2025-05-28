locals {
  default_region = "us-east-1"
}

remote_state {
  backend = "local"

  config = {
    path = "terraform.tfstate"
  }
}
