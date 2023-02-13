FROM ubuntu:20.04 as base
RUN apt update
RUN apt install apache2 -y
RUN service apache2 start
RUN service apache2 status
WORKDIR /var/www/html
EXPOSE 4000
COPY . .



