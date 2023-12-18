resource "azurerm_postgresql_flexible_server" "postgresql" {
  name                   = var.postgres_server_name
  location               = var.location
  resource_group_name    = var.resource_group_name
  sku_name               = "B_Standard_B1ms"
  storage_mb             = 32768
  administrator_login    = "postgres"
  administrator_password = "admin123?"
  version                = "12"
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "all" {
  name             = "allow-all-ips"
  server_id        = azurerm_postgresql_flexible_server.postgresql.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "255.255.255.255"
}
