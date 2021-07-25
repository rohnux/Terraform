output "key_arn" {
  value       = aws_kms_key.kms_key.arn
}

output "key_id" {
  value       = aws_kms_key.kms_key.id
}

output "key_alias_arn" {
  value       = aws_kms_alias.kms_key_alias.arn
}

output "key_alias_name" {
  value       = aws_kms_alias.kms_key_alias.name
}
