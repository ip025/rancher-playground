output "rancher_server_url" {
  value = module.rancher_common.rancher_url
}

output "rancher_node_ip" {
  value = aws_instance.rancher_server.public_ip
}

output "rancher_admin_token" {
  value = nonsensitive(module.rancher_common.rancher_admin_token)
}
