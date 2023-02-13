FROM centos
RUN yum update
RUN yum install httpd -y
RUN service httpd start
RUN service httpd status
WORKDIR /var/www/html
EXPOSE 4000
COPY . .



