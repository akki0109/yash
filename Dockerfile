FROM ubuntu:18.04
RUN apt update
RUN apt install apache2 -y
RUN service apache2 start
WORKDIR /var/www/html
EXPOSE 3000
COPY index.html .


