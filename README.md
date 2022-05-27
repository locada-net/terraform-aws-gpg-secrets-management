# Executing terraform in docker

    docker run -it --rm -v "$(pwd):/home/workspace" -w /home/workspace --name terraform --entrypoint sh hashicorp/terraform:1.2.1

# Create GPG Key

    gpg --full-generate-key