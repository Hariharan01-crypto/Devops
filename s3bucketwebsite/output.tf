output "websiteendpoints" {
  value = aws_s3_bucket.mybucket.website_endpoint
}