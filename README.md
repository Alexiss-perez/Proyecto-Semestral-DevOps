# Sistema de Gestión de Despachos

Proyecto desarrollado para la asignatura **Full Stack III**, implementando una API REST con Spring Boot, contenedorización mediante Docker, despliegue en AWS EC2 y documentación utilizando Swagger.

## Descripción

El sistema permite gestionar información relacionada con despachos mediante una API REST desarrollada en Spring Boot. La solución fue desplegada utilizando contenedores Docker y posteriormente publicada en una instancia EC2 de AWS.

## Arquitectura del Proyecto

```text
Frontend
    │
    ▼
API REST Spring Boot
    │
    ▼
MySQL Database
```

La solución considera:

- Backend desarrollado en Spring Boot.
- Persistencia de datos mediante MySQL.
- Documentación automática con Swagger.
- Contenedorización con Docker.
- Publicación de imágenes en Docker Hub.
- Despliegue en AWS EC2.
- Control de versiones mediante GitHub.

## Tecnologías Utilizadas

### Backend

- Java 17
- Spring Boot 3
- Spring Data JPA
- Maven

### Base de Datos

- MySQL 8

### DevOps

- Docker
- Docker Hub
- AWS EC2

### Documentación

- Swagger OpenAPI

### Control de Versiones

- Git
- GitHub


## Estructura del Proyecto

```text
Springboot-API-REST-DESPACHO
│
├── src
│   ├── main
│   │   ├── java
│   │   └── resources
│   │
│   └── test
│
├── Dockerfile
├── pom.xml
└── README.md
```

# Configuración Base de Datos

Crear una base de datos MySQL:

```sql
CREATE DATABASE despacho_db;
```

Configurar las credenciales en el archivo:

```properties
src/main/resources/application.properties
```

Ejemplo:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/despacho_db
spring.datasource.username=root
spring.datasource.password=123456

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

# Ejecución Local

## Clonar repositorio

```bash
git clone https://github.com/usuario/repositorio.git
```

## Ingresar al proyecto

```bash
cd Springboot-API-REST-DESPACHO
```

## Compilar proyecto

```bash
mvn clean package
```

## Ejecutar aplicación

```bash
java -jar target/*.jar
```

La API quedará disponible en:

```text
http://localhost:8081
```

# Docker

## Construcción de la imagen

```bash
docker build -t despacho:v1 .
```

## Verificar imagen creada

```bash
docker images
```

## Ejecutar contenedor

```bash
docker run -p 8081:8081 despacho:v1
```

# Variables de Entorno

Para entornos Docker y AWS se utilizan variables de entorno para la conexión a la base de datos:

```text
DB_ENDPOINT
DB_PORT
DB_NAME
DB_USERNAME
DB_PASSWORD
```

Ejemplo:

```bash
docker run -p 8081:8081 ^
-e DB_ENDPOINT=localhost ^
-e DB_PORT=3306 ^
-e DB_NAME=despacho_db ^
-e DB_USERNAME=root ^
-e DB_PASSWORD=123456 ^
despacho:v1
```

# Swagger

La documentación de la API puede visualizarse en:

```text
http://localhost:8081/swagger-ui/index.html
```

Desde Swagger es posible:

- Consultar endpoints disponibles.
- Realizar pruebas de API.
- Revisar modelos de datos.
- Validar respuestas del servicio.

# Despliegue AWS EC2

La aplicación fue desplegada en una instancia EC2 de AWS utilizando Docker.

### Actividades realizadas

1. Creación de instancia EC2.
2. Instalación de Docker.
3. Descarga de imagen desde Docker Hub.
4. Ejecución del contenedor.
5. Configuración de puertos.
6. Validación mediante Swagger.


# Control de Versiones

El proyecto fue gestionado mediante Git y GitHub.

Se realizaron:

- Registro de cambios mediante commits.
- Respaldo remoto del código.
- Seguimiento del avance del proyecto.
- Colaboración entre integrantes del equipo.


# Conexión Frontend - Backend

El frontend consume los servicios expuestos por la API REST.

Ejemplo de URL base:

```javascript
const API_URL = "http://localhost:8081/api/despachos";
```

Ejemplo de consumo:

```javascript
fetch(API_URL)
  .then(response => response.json())
  .then(data => console.log(data));
```

# Pruebas Realizadas

- Construcción de imagen Docker.
- Ejecución de contenedor Docker.
- Conexión a base de datos MySQL.
- Pruebas de endpoints mediante Swagger.
- Publicación de imagen en Docker Hub.
- Despliegue en AWS EC2.
- Consumo desde Frontend.

Integrantes:

- Fernanda Collinao
- Alexiss Pérez

