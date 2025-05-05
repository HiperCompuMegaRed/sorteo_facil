# Usa la imagen oficial de Nginx
FROM nginx:alpine

# Copia el archivo HTML al directorio de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Copia el archivo de configuración personalizado
COPY nginx.conf /etc/nginx/nginx.conf

# Expone el puerto 80 para acceso externo
EXPOSE 8080

# Define el comando de inicio del contenedor
CMD ["nginx", "-g", "daemon off;"]
