FROM ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 curl
RUN apt-get install -y apache2-utils 
RUN apt-get clean 
EXPOSE 80
WORKDIR /var/www/html
COPY index.html .
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD [“-D”, “FOREGROUND”]


