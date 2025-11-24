resource "google_container_cluster" "crud" {
 name = var.cluster_name
 location = var.region
 initial_node_count = var.node_count
 node_config {
 machine_type = "e2-medium"
 oauth_scopes = [
 "https://www.googleapis.com/auth/cloud-platform",
 ]
 }
 remove_default_node_pool = false
}