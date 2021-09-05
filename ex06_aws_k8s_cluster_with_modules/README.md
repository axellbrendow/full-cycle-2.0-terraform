## Creating EKS and VPC modules

AWS provider: https://registry.terraform.io/providers/hashicorp/aws/latest

As we will store terraform.tfstate in an S3 bucket for security reasons, create it first:

```
bucket = "fc-eks-bucket"
region = "us-east-1"
```

```sh
terraform init  # Starts a new project
aws configure  # Insert your user config
terraform apply --auto-approve  # Create the infra
```

### Using kubectl

Make sure [aws-iam-authenticator](https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html) is installed and is on your PATH variable.

```sh
cp kubeconfig ~/.kube/config
# Now kubectl will connect to our cluster
```

### Creating a nginx deployment

```sh
kubectl create deploy nginx --image=nginx
kubectl get pods  # Get the pod name, ex: nginx-6799fc88d8-cqz92, then:
kubectl port-forward pod/nginx-6799fc88d8-cqz92 8181:80
# Access localhost:8181 and see the nginx page
```

### Deleting everything!

```sh
terraform destroy
```

As we created the S3 bucket by hand, delete it too!
