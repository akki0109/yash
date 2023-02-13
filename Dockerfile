FROM ubuntu:18.04
RUN apt update
RUN apt install –y apache2 
RUN apt install –y apache2-utils 
RUN apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
WORKDIR /var/www/html
COPY index.html .


