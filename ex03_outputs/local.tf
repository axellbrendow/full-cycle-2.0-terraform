resource "local_file" "example" {
    content = var.content
    filename = "example.txt"
}

variable "content" {
    type = string
}

output "file-id" {
    value = resource.local_file.example.id
}

output "content" {
    value = var.content
}

output "chicken-egg" {
    value = sort(["🐤", "🥚"])  # Let's see who came first
}
