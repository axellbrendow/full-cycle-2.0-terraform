resource "local_file" "example" {
    content = var.content
    filename = "example.txt"
}

variable "content" {
    type = string
}
