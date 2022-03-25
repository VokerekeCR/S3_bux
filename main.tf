resource "aws_s3_bucket" "my_project_bucket" {
    bucket = "victor-talent-academy-686520628199-tfstates-victor"

    lifecycle {
      prevent_destroy = true
    }

    tags = {
        Name = "victor-talent-academy-686520628199-tfstates-victor"
        Environment = "Test"
    }
}

resource "aws_s3_bucket_versioning" "version_my_bucket" {
  bucket = aws_s3_bucket.my_project_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
