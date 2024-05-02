output "node" {
  description = "Node name to which pod was deployed"
  value       = kubernetes_pod.nginx.spec[0].node_name
}