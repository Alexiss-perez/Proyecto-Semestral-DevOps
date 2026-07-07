# Proyecto Semestral DevOps - Innovatech

## Introducción

Proyecto desarrollado para la asignatura **Introducción a Herramientas DevOps**.

El objetivo fue implementar una arquitectura basada en contenedores utilizando Docker, automatizar la integración y el despliegue continuo mediante GitHub Actions, y preparar la orquestación de los servicios mediante Kubernetes para su despliegue sobre Amazon EKS.

La solución contempla dos microservicios backend desarrollados con Spring Boot, un frontend desarrollado con React, una base de datos MySQL y una infraestructura preparada para ejecutarse en AWS.

---

# Integrantes

- Fernanda Collinao
- Alexiss Pérez

---

# Objetivos

- Contenerizar los servicios mediante Docker.
- Automatizar el proceso de Integración Continua (CI).
- Preparar el Despliegue Continuo (CD).
- Publicar imágenes Docker en Amazon ECR.
- Orquestar los contenedores utilizando Kubernetes.
- Preparar la solución para Amazon EKS.
- Aplicar buenas prácticas DevOps.

---

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

---

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

- MySQL 8

## Contenedores

- Docker
- Docker Compose

## Kubernetes

- Kubernetes
- kubectl
- eksctl

## AWS

- Amazon ECR
- Amazon EKS
- AWS CLI
- IAM

## Automatización

- GitHub Actions

## Control de versiones

- Git
- GitHub

---

# Estructura del Proyecto

```text
Proyecto-Semestral-DevOps-Final/

.github/
└── workflows/
    └── deploy.yml

back-bespachos-springboot/

back-ventas-springboot/

front-despacho/

k8s/
├── frontend.yaml
├── despacho.yaml
├── ventas.yaml
└── mysql.yaml

docker-compose.yml

README.md
```

---

# Funcionalidades Implementadas

- API REST para Despachos.
- API REST para Ventas.
- Frontend React.
- Contenerización mediante Docker.
- Ejecución integrada con Docker Compose.
- Pipeline CI/CD con GitHub Actions.
- Manifiestos Kubernetes.
- Uso de Secrets para configuración de base de datos.

---

# Pipeline CI/CD

Cada actualización enviada a la rama **main** ejecuta automáticamente un pipeline que realiza las siguientes tareas:

1. Clona el repositorio.
2. Compila Backend Despachos.
3. Compila Backend Ventas.
4. Compila Frontend.
5. Construye las imágenes Docker.
6. Publica las imágenes en Amazon ECR.
7. Deja preparado el despliegue mediante manifiestos Kubernetes.

---

# Docker

Se construyeron imágenes Docker independientes para:

- Frontend
- Backend Despachos
- Backend Ventas
- Base de datos MySQL

La ejecución local del proyecto se realiza mediante **Docker Compose**.

---

# Kubernetes

Se desarrollaron manifiestos Kubernetes para:

- Deployment Frontend
- Deployment Backend Despachos
- Deployment Backend Ventas
- Deployment MySQL
- Services
- Secrets

La solución quedó preparada para ejecutarse sobre Amazon EKS.

---

# Amazon EKS

Durante el desarrollo se realizó:

- Creación del clúster.
- Configuración de kubectl.
- Configuración de Node Groups.
- Integración con AWS CLI.
- Preparación de los manifiestos Kubernetes.

Debido a las restricciones del entorno **AWS Academy Learner Lab**, el acceso al clúster presentó limitaciones relacionadas con permisos IAM y disponibilidad del entorno, por lo que el despliegue quedó preparado para una cuenta AWS sin dichas restricciones.

---

# Amazon ECR

El proyecto contempla la publicación automática de imágenes Docker mediante GitHub Actions.

Repositorios utilizados:

- innovatech-frontend
- innovatech-despacho
- innovatech-ventas

---

# Variables de Entorno

Las credenciales necesarias para AWS se almacenan mediante **GitHub Secrets**.

Variables utilizadas:

```text
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_SESSION_TOKEN
AWS_REGION
```

---

# Evidencias Obtenidas

Durante el desarrollo se validó:

- Construcción correcta de imágenes Docker.
- Ejecución local mediante Docker Compose.
- Funcionamiento del frontend.
- Funcionamiento de los microservicios.
- Conexión exitosa con MySQL.
- Documentación Swagger.
- Configuración Kubernetes.
- Pipeline CI/CD.
- Configuración de GitHub Actions.

---

# Dificultades Encontradas

Durante el desarrollo se presentaron algunos inconvenientes:

- Restricciones del entorno AWS Academy.
- Configuración inicial de Docker Compose.
- Integración de MySQL con los microservicios.
- Ajustes del workflow GitHub Actions.
- Configuración de Kubernetes.

Todos estos inconvenientes fueron solucionados o documentados durante el desarrollo del proyecto.

---

# Resultados

Se implementó una solución basada en prácticas DevOps que permite:

- Automatizar la compilación del proyecto.
- Ejecutar la solución mediante Docker Compose.
- Construir imágenes Docker.
- Preparar el despliegue mediante Kubernetes.
- Integrar el proyecto con GitHub Actions.
- Preparar la publicación de imágenes hacia Amazon ECR.

---

# Mejoras Futuras

- Completar el despliegue automático sobre Amazon EKS.
- Incorporar Prometheus y Grafana para monitoreo.
- Implementar Ingress Controller.
- Incorporar certificados HTTPS.
- Implementar estrategias Blue/Green Deployment.

---

# Conclusión

El proyecto permitió aplicar los principales conceptos de DevOps mediante la integración de Docker, Docker Compose, Kubernetes, GitHub Actions y Amazon Web Services.

Se logró implementar una arquitectura basada en microservicios completamente funcional en entorno local, automatizando el proceso de construcción de la solución y preparando la infraestructura para su despliegue sobre Amazon EKS.