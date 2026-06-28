# Proyecto Semestral DevOps - Innovatech

## Introducción

Proyecto desarrollado para la asignatura **Introducción a Herramientas DevOps**.

El objetivo fue implementar una arquitectura basada en contenedores utilizando Docker, automatizar la integración y el despliegue continuo mediante GitHub Actions, y orquestar los servicios con Kubernetes sobre Amazon EKS.

La solución contempla backend desarrollado con Spring Boot, frontend desarrollado con React y una infraestructura preparada para ejecutarse en la nube utilizando servicios de AWS.


# Integrantes

- Fernanda Collinao
- Alexiss Pérez


# Objetivos

- Contenerizar los servicios mediante Docker.
- Automatizar el proceso de integración continua (CI).
- Automatizar el despliegue continuo (CD).
- Publicar imágenes Docker en Amazon ECR.
- Orquestar los contenedores utilizando Kubernetes.
- Desplegar la solución sobre Amazon EKS.
- Aplicar buenas prácticas DevOps.


# Arquitectura

```text
                    GitHub

                       │
                 GitHub Actions
                       │
         ┌─────────────┴─────────────┐
         │                           │
         ▼                           ▼
 Compilación                  Docker Build
         │                           │
         └─────────────┬─────────────┘
                       │
                 Amazon ECR
                       │
                       ▼
                 Amazon EKS
                       │
      ┌────────────────┼────────────────┐
      ▼                ▼                ▼

 Frontend React   API Despachos   API Ventas

                       │
                       ▼

                    MySQL
```


# Tecnologías Utilizadas

## Backend

- Java 17
- Spring Boot 3
- Spring Data JPA
- Maven

## Frontend

- React
- Vite

## Base de Datos

- MySQL

## Contenedores

- Docker
- Docker Compose

## Kubernetes

- Kubernetes
- kubectl
- eksctl

## AWS

- Amazon EKS
- Amazon ECR
- AWS CLI
- IAM

## Automatización

- GitHub Actions

## Control de versiones

- Git
- GitHub


# Estructura del Proyecto

```text
Proyecto-Semestral-DevOps/

.github/
└── workflows/
    └── deploy.yml

back-despachos-springboot/

back-ventas-springboot/

front-despacho/

k8s/
├── frontend.yaml
├── despacho.yaml
├── ventas.yaml
├── service.yaml
└── hpa.yaml

README.md
```


# Funcionalidades implementadas

- API REST con Spring Boot.
- Frontend React.
- Dockerización de todos los servicios.
- Publicación automática de imágenes.
- Pipeline CI/CD.
- Despliegue mediante Kubernetes.
- Configuración de Horizontal Pod Autoscaler.
- Uso de Secrets para credenciales.


# Pipeline CI/CD

Cada actualización enviada a la rama principal ejecuta automáticamente un pipeline que realiza las siguientes tareas:

1. Clona el repositorio.
2. Compila Backend Despachos.
3. Compila Backend Ventas.
4. Compila Frontend.
5. Construye las imágenes Docker.
6. Publica las imágenes en Amazon ECR.
7. Ejecuta el despliegue sobre Kubernetes.


# Docker

Para cada servicio se construyó una imagen Docker independiente.

Servicios:

- Frontend
- Backend Despachos
- Backend Ventas


# Kubernetes

Se desarrollaron manifiestos para:

- Deployments
- Services
- Horizontal Pod Autoscaler

La solución quedó preparada para ejecutarse sobre Amazon EKS.


# Amazon EKS

Durante el desarrollo se realizó:

- Creación del clúster.
- Configuración de IAM.
- Configuración de Node Groups.
- Integración con kubectl.
- Configuración del acceso mediante aws-auth.

Debido a las restricciones propias del entorno AWS Academy Learner Lab, el registro definitivo de los nodos presentó limitaciones de permisos IAM. Sin embargo, se logró crear el clúster, configurar la infraestructura y validar el funcionamiento del pipeline CI/CD.


# Amazon ECR

Las imágenes Docker se publican automáticamente mediante GitHub Actions.

Repositorios utilizados:

- Frontend
- Backend Despachos
- Backend Ventas


# Variables de entorno

Las credenciales necesarias para el despliegue se almacenan mediante GitHub Secrets.

Ejemplos:

```text
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_REGION
AWS_ACCOUNT_ID

ECR_FRONTEND
ECR_DESPACHO
ECR_VENTAS
```


# Evidencias obtenidas

Durante el desarrollo se validó:

- Construcción correcta de imágenes Docker.
- Ejecución local mediante Docker.
- Pipeline GitHub Actions exitoso.
- Publicación de imágenes.
- Creación del clúster Amazon EKS.
- Configuración Kubernetes.
- Integración con kubectl.


# Dificultades encontradas

Durante el desarrollo se presentaron algunos inconvenientes:

- Restricciones de permisos IAM del entorno AWS Academy.
- Problemas iniciales con Node Groups.
- Configuración del archivo aws-auth.
- Ajustes del workflow de GitHub Actions.
- Configuración de Maven en el runner de GitHub.

Todos estos inconvenientes fueron solucionados o documentados durante el proceso.


# Resultados

Se implementó un flujo DevOps completamente automatizado que permite:

- Compilar el proyecto automáticamente.
- Construir imágenes Docker.
- Publicarlas en Amazon ECR.
- Automatizar el despliegue mediante GitHub Actions.
- Preparar la infraestructura para Kubernetes sobre Amazon EKS.


# Mejoras futuras

- Completar el despliegue final sobre EKS con una cuenta AWS sin restricciones.
- Incorporar monitoreo mediante Prometheus y Grafana.
- Implementar Ingress Controller.
- Incorporar certificados HTTPS.
- Implementar despliegues Blue/Green.


# Conclusión

El proyecto permitió aplicar los principales conceptos de DevOps mediante la automatización del ciclo de vida de una aplicación, integrando Docker, Kubernetes, Amazon Web Services y GitHub Actions en un flujo continuo de integración y despliegue.

A pesar de las limitaciones del entorno AWS Academy respecto a permisos IAM para el registro de nodos, se logró desarrollar una solución funcional, automatizada y alineada con los objetivos de la evaluación.

Integrantes:

- Fernanda Collinao
- Alexiss Pérez

