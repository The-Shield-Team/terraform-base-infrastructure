resource "supabase_project" "production" {
  organization_id = var.organization_id
  name            = "HIR"
  //database_password = "op://The-Shield-Team/HIR_Database_Password/password"
  database_password = var.database_password
  region            = "sa-east-1"

  lifecycle {
    ignore_changes = [database_password]
  }
}
