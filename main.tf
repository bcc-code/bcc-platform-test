terraform {
  cloud {
    organization = "what"
    workspaces {
      tags = ["networking"]
    }
  }
}

