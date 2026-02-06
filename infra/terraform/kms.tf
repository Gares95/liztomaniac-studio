resource "aws_kms_key" "s3_app_data" {
  description             = "KMS key for Liztomaniac S3 application data (uploads/results)"
  enable_key_rotation     = true
  deletion_window_in_days = 7
  tags                    = local.tags
}

resource "aws_kms_alias" "s3_app_data" {
  name          = "alias/${var.project_name}-s3-app-data"
  target_key_id = aws_kms_key.s3_app_data.key_id
}
