FROM ubuntu:18.04
RUN apt update
RUN apt install apache2 -y
RUN service apache2 start
WORKDIR /var/www/html
COPY index.html .
RUN service apache2 start


