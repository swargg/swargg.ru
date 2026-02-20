FROM nginx:stable-alpine
LABEL autor=SwarG
WORKDIR /usr/share/nginx/html/
COPY www/index.html .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]