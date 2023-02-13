FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update 
RUN apt-get install -y apache2 
RUN apt-get install -y apache2-utils 
RUN apt install -y tcl
EXPOSE 80
WORKDIR /var/www/html
COPY index.html .
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]

