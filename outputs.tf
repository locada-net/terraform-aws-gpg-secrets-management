output "iam_tech_user_access_key_id" {
    value = module.iam_tech_user.iam_access_key_id
}
output "iam_tech_user_access_secret_key" {
    value = module.iam_tech_user.iam_access_key_encrypted_secret
}