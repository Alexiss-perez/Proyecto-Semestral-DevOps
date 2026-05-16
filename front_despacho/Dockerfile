# --- ETAPA 1: COMPILACIÓN ---
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# --- ETAPA 2: SERVIDOR PRODUCCIÓN (Nginx) ---
FROM nginx:alpine
WORKDIR /usr/share/nginx/html

# Modificar permisos internos de Nginx para permitir ejecución No-Root
RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid /var/cache/nginx /usr/share/nginx/html

# Activar usuario sin privilegios
USER nginx

# Copiar los archivos estáticos (ajusta a '.' o 'dist' según compile tu framework)
COPY --from=builder /app/dist .

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]