variable "trivy_operator_name" {
  type        = string
  description = "The release name of trivy opearator"
  default     = "trivy-operator"
}

variable "trivy_operator_chart_name" {
  type        = string
  description = "The chart name of trivy opearator"
  default     = "trivy-operator"
}

variable "trivy_operator_namespace" {
  type        = string
  description = "The namespace of trivy opearator to deploy trivy-operator into"
  default     = "trivy-operator"
}

variable "trivy_operator_version" {
  type        = string
  description = "The version of trivy opearator to deploy"
  default     = "0.15.1"
}
