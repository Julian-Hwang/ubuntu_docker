FROM ubuntu:latest

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/html/index.html /usr/share/nginx/html/index.html

RUN apt-get update
RUN apt-get install nginx -y

RUN echo "<html><body><h1>Hello Ubuntu.</h1></body></html>" > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
