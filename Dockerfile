# Use second stage nginx image
FROM nginx:1.17-alpine

COPY . /var/www
ADD ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]
