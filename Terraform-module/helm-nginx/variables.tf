variable "release_name" {
  type        = string
  description = "Name of the Helm release"
}

variable "namespace" {
  type        = string
  description = "Namespace to install the chart into"
  default     = "default"
}

variable "chart_path" {
  type        = string
  description = "Local or remote path to the Helm chart"
}

variable "kubeconfig_path" {
  type        = string
  description = "Path to kubeconfig file"
}
