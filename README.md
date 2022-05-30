# Create GPG Key

    gpg --full-generate-key

# Exporting Public Key

    gpg --export -a KEY_ID > public_key.gpg

# Executing terraform in docker

    docker run -it --rm -v "$(pwd):/home/workspace" -w /home/workspace --name terraform --entrypoint sh hashicorp/terraform:1.2.1
    terraform init
    <configure aws access key & secret>
    terraform plan
    terraform apply