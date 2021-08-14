data "local_file" "example-data-source" {
    filename = "example.txt"
}

output "data-source-result" {
    value = data.local_file.example-data-source.content
}
