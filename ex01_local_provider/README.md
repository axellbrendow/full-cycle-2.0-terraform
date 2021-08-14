## Using the local provider to create a file

Local provider resources: https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file

```sh
terraform init  # Starts a new project
terraform plan  # Plans the changes to the infrastructure
terraform apply  # Apply them
```

## Doing changes in the infrastructure and backuping last state

```sh
cat > local.tf <<- EOM
resource "local_file" "example" {
    content = "example_changed!"
    filename = "example.txt"
}
EOM

terraform apply
# You should see what will change and terraform should create
# a backup file with your current infrastructure state
```
