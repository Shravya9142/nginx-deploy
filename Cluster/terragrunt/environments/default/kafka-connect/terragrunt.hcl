terraform {
  source = "../../../../terraform-module/kafka-connect"
}

inputs = {
  deploy_only_connector   = true
  namespace   = "default"
  chart_path  = "/Users/shravyagennepally/nginx-deploy/Cluster/kafka-connect-helm"
}
