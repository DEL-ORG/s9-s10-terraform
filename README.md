# s9-s10-terraform

## Terraform releases version
https://releases.hashicorp.com/terraform/

## Powerpoint Link
https://docs.google.com/presentation/d/1LWNfKqaUaBknX6C0fP12xotL6VXNa5Q-/edit?slide=id.g2a60100337f_0_20#slide=id.g2a60100337f_0_20

## Mac installation
```sh
#!/bin/bash

TERRAFORM_VERSION="1.3.0"
DOWNLOAD_URL="https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_darwin_amd64.zip"
INSTALL_DIR="/usr/local/bin"

curl -o terraform_${TERRAFORM_VERSION}_darwin_amd64.zip ${DOWNLOAD_URL}
unzip terraform_${TERRAFORM_VERSION}_darwin_amd64.zip
sudo mv terraform ${INSTALL_DIR}/terraform
sudo chmod +x ${INSTALL_DIR}/terraform
rm terraform_${TERRAFORM_VERSION}_darwin_amd64.zip

echo "Terraform installation complete."
terraform version
```

## Install on Linux
```sh
#!/bin/bash

TERRAFORM_VERSION="1.10.5"
DOWNLOAD_URL="https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

INSTALL_DIR="/usr/local/bin"
echo "Downloading Terraform ${TERRAFORM_VERSION}..."
curl -o terraform_${TERRAFORM_VERSION}_linux_amd64.zip ${DOWNLOAD_URL}
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
sudo mv terraform ${INSTALL_DIR}/terraform
sudo chmod +x ${INSTALL_DIR}/terraform
rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip
echo "Terraform installation complete."
terraform version
```

## Windows download
https://releases.hashicorp.com/terraform/1.3.0/terraform_1.3.0_windows_amd64.zip

## AWS CLI Windows
https://awscli.amazonaws.com/AWSCLIV2.msi

## MAC AWS CLI
https://brew.sh/

# s9-s10-terraform
