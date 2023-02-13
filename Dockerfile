FROM ubuntu:latest
RUN apt update
RUN apt install apache2 -y
RUN service apache2 status
RUN service apache2 start
WORKDIR /var/www/html
EXPOSE 4000
COPY . .



