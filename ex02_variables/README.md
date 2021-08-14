## Using the local provider to create a file with variable content

Local provider resources: https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file

```sh
terraform init  # Starts a new project
```

Then:

```sh
export TF_VAR_content="Came from env"
terraform apply
```

or

```sh
terraform apply -var "content=Came from -var"
```

or

```sh
terraform apply -var-file example.tfvars
```
