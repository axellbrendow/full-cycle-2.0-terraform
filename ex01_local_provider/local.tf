# In "local_file", "local" is the provider and "file" is the provider type
# The whole block is the resource
resource "local_file" "example" {
    content = "example!"
    filename = "example.txt"
}