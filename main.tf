
resource "aws_s3_bucket" "static_website" {
  bucket = "myresume-bucket-007"  # Replace with your desired bucket name
#   acl    = "public-read"  # Allows public read access to objects in the bucket

  website {
    index_document = "index.html"  # The default document to serve
    error_document = "error.html"  # The document to serve on 4xx errors
  }

  lifecycle {
    prevent_destroy = true  # To avoid accidental deletion of the S3 bucket
  }

   object_lock_configuration {
    object_lock_enabled = "Enabled"
    rule {
      default_retention {
        mode                 = "COMPLIANCE"
        days                 = 30
      }
    }
  }
}

resource "aws_s3_bucket_object" "website_files" {
  bucket = aws_s3_bucket.static_website.id
  key    = "index.html"  # Replace with the entry file of your website
  source = "/Users/efosaoviawe/desktop/projects/CV/resume/index.html"  # Replace with the local path to your index.html file
  etag   = filemd5("/Users/efosaoviawe/desktop/projects/CV/resume/index.html")  # Replace with the local path to your index.html file

  content_type = "text/html"  # Set the appropriate content type
#   acl          = "public-read"  # Allows public read access to the object
}
