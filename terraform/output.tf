output "bucket_name" {
  value = aws_s3_bucket.data_bucket.id
}

output "folder_keys" {
  value = [
    aws_s3_object.raw_folder.key,
    aws_s3_object.analysis_folder.key,
    aws_s3_object.processed_folder.key
  ]
}
output "athena_database" {
  value = aws_athena_database.bellybrew_db.name
}

output "athena_output_location" {
  value = aws_athena_workgroup.default.configuration[0].result_configuration[0].output_location
}
