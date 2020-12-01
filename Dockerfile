# FROM debian

# RUN apt-get update && apt-get install -y \ 
#     nginx \
# &&  rm -rf /var/lib/apt/lists/* 
FROM nginx

COPY /index.html /usr/share/nginx/html/index.html

EXPOSE 80

COPY . /opt/

CMD ["nginx", "-g", "daemon off;"]