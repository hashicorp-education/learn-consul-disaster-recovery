output "consul_token" {
  sensitive = true
  value = random_uuid.consul_bootstrap_token.result
  description = "Consul bootstrap token"
}

output "consul_server_ips" {
  value = aws_instance.consul-server-group[*].public_ip
  description = "Public IP of the first group of Consul Servers"
}

output "next_steps" {
  value = [
  "You can now add the TLS certificate for accessing your EC2 instances by running:",
  "ssh-add ${local_file.key_instances_key.filename}",
  ]
}