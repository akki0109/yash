FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN service apache2 restart
WORKDIR /var/www/html
EXPOSE 4000
COPY . .



