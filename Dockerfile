from ubuntu
RUN apt update
RUN apt install docker -y
RUN apt install apache2 -y
RUN service apache2 start
RUN service docker start
WORKDIR /var/www/html/
CMD chown -R ubuntu:ubuntu /var/www/html/
COPY . .



