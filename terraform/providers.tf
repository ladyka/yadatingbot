terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  backend "s3" {
    endpoints  = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket     = "terraform-50af7590-state"
    region     = "ru-central1"
    key        = "yadatingbot/terraform.tfstate"
    access_key = "YCAJEhWPBk3oJzGy4rRlZR9vg"
    secret_key = "YCNOa1otk8Xw5zyQvpj3YBCU3esMVauXoHr8Erh6"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true # Необходимая опция Terraform для версии 1.6.1 и старше.
    skip_s3_checksum            = true # Необходимая опция при описании бэкенда для Terraform версии 1.6.3 и старше.

  }

}

provider "yandex" {
  #  token     = var.YANDEX_TOKEN
  token     = "t1.9euelZqVm8uPnIqTksaazcuamsmLne3rnpWaz5PNz5Caks-ZipPGl82Nj8_l8_caCRpQ-e9ICCov_t3z91o3F1D570gIKi_-zef1656Vmp3Mj4yTkZjPiZnMlpqQkJaN7_zF656Vmp3Mj4yTkZjPiZnMlpqQkJaN.NSmi3a6lBFinDMfDm-E0XAAD-fiBY9YvplpUho3exXoRYfZUZ3ojGx3M9IEcHP6pFdTBSGX7F4qv4WEhvQX0Dg"
  cloud_id  = local.cloud_id
  folder_id = local.folder_id
  zone      = local.zone
}

locals {
  cloud_id  = "b1gujnmnm30l00onbufg"
  folder_id = "b1gn8nr5ltv3ksjs0qrk"
  zone      = "ru-central1-b"
}
