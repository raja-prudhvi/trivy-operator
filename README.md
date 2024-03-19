# 🛡️ Trivy-Operator Installation for Kubernetes Security Scanning 🛡️

Welcome to the Trivy-Operator installation repository! This Terraform module installs Trivy-Operator into a Kubernetes cluster, enabling comprehensive security vulnerability scanning. Trivy-Operator scans the entire cluster and generates security reports, providing valuable insights into the security posture of your Kubernetes environment. You can integrate with grafana dashboard for
better visibility.

## 🚀 Features

- **Automated Security Scanning**: Trivy-Operator scans the Kubernetes cluster for security vulnerabilities automatically.
- **Comprehensive Reports**: Generates various reports including CIS benchmark, RBAC assessment, config audit, exposed secrets, infra assessment, and vulnerability reports.
- **Integration with Grafana**: Integrates with Grafana to display dashboards for visualizing Trivy scan results.

## 📁 Project Structure

```
.
├── README.md
├── assets
│ └── values.yaml
├── main.tf
├── outputs.tf
└── variables.tf

```

## 🚀 Getting Started

1. **Install Terraform**: Make sure you have Terraform installed locally.
2. **Customize Variables**: Modify the variables in `variables.tf` as per your Kubernetes environment and requirements.
3. **Run Terraform**: Execute `terraform init` to initialize Terraform, then `terraform apply` to apply the changes and install Trivy-Operator.

## 📊 Trivy-Operator Reports

Trivy-Operator generates the following reports:

- **Cluster Compliance Reports**: Based on CIS benchmarks and NSA Kubernetes Hardening Guidance.
- **RBAC Assessment Reports**: Details access rights of different resources and highlights issues with excessive privileges.
- **Cluster Config Audit Reports**: Automated configuration audits for Kubernetes resources.
- **Exposed Secret Reports**: Scans and locates exposed Secrets within the cluster.
- **Infra Assessment Reports**: Scans Kubernetes core components settings and configurations.
- **Vulnerability Reports**: Scans for vulnerabilities in container images.

## 📈 Grafana Dashboard

Check out the [Grafana dashboard](https://github.com/dotdc/grafana-dashboards-kubernetes/blob/master/dashboards/k8s-addons-trivy-operator.json) integration with Trivy for visualizing scan results.
