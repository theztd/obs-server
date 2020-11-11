terraform {
	required_providers {
		google = {
			source = "hashicorp/google"
		}
	}
}

# terraform {
#   backend "remote" {
#     organization = "theztd-org"
# 
#     workspaces {
#       name = "obs-server"
#     }
#   }
# }

