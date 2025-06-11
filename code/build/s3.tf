provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "7a123ff3-87dc-4d61-bb62-7599fa22fe07"
    git_commit           = "f376bb0191647377d413383759a89f52e8795753"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-11 16:26:53"
    git_last_modified_by = "57415684+EpicCoder71@users.noreply.github.com"
    git_modifiers        = "57415684+EpicCoder71"
    git_org              = "EpicCoder71"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

