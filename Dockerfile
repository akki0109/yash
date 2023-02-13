FROM ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 
RUN apt-get install -y apache2-utils 
RUN apt-get clean 
RUN service apache2 start
EXPOSE 80
WORKDIR /var/www/html
COPY index.html .



