variable "organization_id" {
  description = "The Supabase organization ID"
  type = string
  sensitive = true
}

variable "database_password" {
  description = "The Supabase database password"
  type = string
  sensitive = true
}

variable "access_token" {
  description = "The Supabase access token"
  type = string
  sensitive = true
}