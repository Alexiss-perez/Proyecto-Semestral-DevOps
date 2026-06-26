variable "aws_region" {
  description = "Región de AWS donde se desplegará la infraestructura"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Nombre del clúster EKS"
  type        = string
  default     = "innovatech-eks-cluster"
}

variable "kubernetes_version" {
  description = "Versión de Kubernetes para EKS"
  type        = string
  default     = "1.31"
}

variable "node_instance_type" {
  description = "Tipo de instancia EC2 para los nodos del clúster"
  type        = string
  default     = "t3.small"
}

variable "desired_nodes" {
  description = "Cantidad deseada de nodos"
  type        = number
  default     = 2
}

variable "min_nodes" {
  description = "Cantidad mínima de nodos"
  type        = number
  default     = 1
}

variable "max_nodes" {
  description = "Cantidad máxima de nodos"
  type        = number
  default     = 3
}