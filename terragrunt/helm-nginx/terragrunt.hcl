terraform {
  source = "../../Terraform-module/helm-nginx"
}

inputs = {
  release_name    = "nginx-server"
  namespace       = "web"
  chart_path      = "/Users/shravyagennepally/nginx-deploy/nginx-chart"  # or a chart name from a repo
  kubeconfig_path = "~/.kube/config"
}
