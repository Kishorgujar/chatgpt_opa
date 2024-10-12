package example.s3

default allow = false

# Check if the bucket's tags match the required tags
allow {
    input.resource_type == "s3_bucket"
    input.action == "create"  # or "update" depending on your use case
    input.tags == {"Environment": "Production", "Owner": "TeamA"}
}

