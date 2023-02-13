FROM ubuntu:latest
RUN apt update
RUN apt install apache2 -y
RUN service apache2 start
RUN service apache2 status
WORKDIR /var/www/html
EXPOSE 4000
COPY . .



