#Creacion del archivo de la imagen 
FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
