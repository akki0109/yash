from ubuntu
RUN apt update
RUN apt install apache2 -y
RUN service apache2 start
WORKDIR /var/www/html
EXPOSE 4000
CMD chown -R ubuntu:ubuntu /var/www/html
COPY . .



