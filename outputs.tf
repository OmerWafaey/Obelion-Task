output "frontend_public_ip" {
  value = aws_instance.frontend.public_ip
}

output "backend_public_ip" {
  value = aws_instance.backend.public_ip
}

output "database_endpoint" {
  value = aws_db_instance.mysql.endpoint
}
