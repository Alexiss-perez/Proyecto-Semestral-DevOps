output "cluster_name" {
  description = "Nombre del clúster EKS creado"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint público del clúster EKS"
  value       = module.eks.cluster_endpoint
}

output "region" {
  description = "Región AWS utilizada"
  value       = var.aws_region
}

output "vpc_id" {
  description = "ID de la VPC creada"
  value       = module.vpc.vpc_id
}