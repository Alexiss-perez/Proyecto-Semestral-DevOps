# --- ETAPA 1: COMPILACIÓN (Build Stage) ---
FROM maven:3.9-eclipse-temurin-17-alpine AS builder
WORKDIR /app

# Copiar el archivo pom.xml para descargar dependencias y optimizar la caché de capas de Docker
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copiar el código fuente completo del microservicio
COPY src ./src

# Compilar empaquetando el archivo JAR omitiendo los tests para acelerar la pipeline
RUN mvn clean package -DskipTests

# --- ETAPA 2: EJECUCIÓN EN PRODUCCIÓN (Production Stage) ---
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# Cumplir con requerimiento de seguridad: Crear grupo y usuario No-Root
RUN addgroup -S springgroup && adduser -S springuser -G springgroup

# Copiar únicamente el archivo .jar compilado desde la etapa anterior (Mapeo limpio)
COPY --from=builder /app/target/*.jar app.jar

# Cambiar los privilegios del directorio al usuario no-root
RUN chown -R springuser:springgroup /app

# Indicar a Docker que use el usuario sin privilegios recién creado
USER springuser

# Puerto por defecto expuesto internamente por Spring Boot
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]