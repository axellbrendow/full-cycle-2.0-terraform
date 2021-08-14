## Using the local provider to create a file with variable content

Local provider resources: https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file

```sh
terraform init  # Starts a new project
terraform apply -var-file example.tfvars
```

Output should be similar to:

```
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

chicken-egg = tolist([
  "🐤",
  "🥚",
])
content = "Output example"
file-id = "16325b392eb13e6de6cd97c6bf95b35180cd8844"
```

Which proves the baby chick came first!
