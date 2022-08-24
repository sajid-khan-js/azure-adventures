output "domain" {
  value = data.azuread_domains.this
}

output "app" {
  value = azuread_application.this
}

output "sp" {
  value = azuread_service_principal.this
}

output "user" {
  value = azuread_user.this
}
