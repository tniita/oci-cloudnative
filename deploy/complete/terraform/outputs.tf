# Copyright (c) 2020 Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl.
# 

output "mushop_url_button" {
  value = format("http://%s", data.kubernetes_service.mushop_ingress.load_balancer_ingress[0].ip)
  description = "MuShop Storefront URL for ORM button"
}
output "mushop_url" {
  value = format("http://%s", data.kubernetes_service.mushop_ingress.load_balancer_ingress[0].ip)
  description = "MuShop Storefront URL"
}
output "grafana_url" {
  value = format("http://%s/grafana", data.kubernetes_service.mushop_ingress.load_balancer_ingress[0].ip)
  description = "Grafana Dashboards URL"
}
output "autonomous_database_password" {
  value = random_string.autonomous_database_wallet_password.result
  sensitive   = true
}
output "dev" {
  value = "Made with \u2764 by Oracle A-Team"
}
output "comments" {
  value = "The application URL will be unavailable for a few minutes after provisioning, while the application is configured"
}
output "external_ip" {
  value = data.kubernetes_service.mushop_ingress.load_balancer_ingress[0].ip
}


