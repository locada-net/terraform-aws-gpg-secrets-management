data "local_file" "pgp_key" {
  filename = "public_key.gpg"
}

module "iam_tech_user" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "5.0.0"

  name = "technical_user"
  force_destroy = true

  pgp_key = data.local_file.pgp_key.content_base64
  
}