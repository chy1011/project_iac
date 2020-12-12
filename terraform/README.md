# Terraform
## Installation Guide
Add the HashiCorp GPG key.
```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
```

Add the official HashiCorp Linux repository.
```
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
```

Update and Install
```
sudo apt-get update && sudo apt-get install terraform
```

Enable tab completion
```
terraform -install-autocomplete
```
## Integrate with AWS
### Prerequisites
- An AWS account
- The AWS CLI installed
  - [AWS CLI Documentation for Installation](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html)
- With your account created and the CLI installed configure the AWS CLI.
      ```
      aws configure
      ```
- Follow the prompts to input your AWS Access Key ID and Secret Access Key, which you'll find on this page.

#### Note
The configuration process creates a file at ~/.aws/credentials on MacOS and Linux or %UserProfile%\.aws\credentials on Windows, where your credentials are stored.
