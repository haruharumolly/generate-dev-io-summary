# AWS プロバイダーは実装時のメジャーバージョンの最新以上を使用するよう定義
terraform {

  cloud {
    organization = "haruka-aibara"
    workspaces {
      name = "generate-dev-io-summary"
    }
  }

  required_version = ">= 1.9.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.65.0"
    }
  }
}
