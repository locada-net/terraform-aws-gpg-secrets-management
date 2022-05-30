# Create GPG Key

    gpg --full-generate-key

# Exporting Public Key

    gpg --export -a KEY_ID > public_key.gpg

# Executing terraform in docker

    docker run -it --rm -v "$(pwd):/home/workspace" -w /home/workspace --name terraform-container --entrypoint sh hashicorp/terraform:1.2.1
    terraform init
    <configure aws access key & secret>
    terraform plan
    terraform apply

# Decrypt IAM Secret Key

If running terraform via container, use docker-exec syntax for fetching the encrypted secret key, concatenating the decryption.

    docker exec CONTAINER_NAME terraform output -raw iam_tech_user_access_secret_key | base64 -d | gpg -d

For example:

    docker exec terraform-container terraform output -raw iam_tech_user_access_secret_key | base64 -d | gpg -d

Or if you have Terraform and GPG installed locally, just run:

    terraform output -raw iam_tech_user_access_secret_key | base64 -d | gpg -d