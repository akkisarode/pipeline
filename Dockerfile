FROM centos:latest1
MAINTAINER akshaydsar@gmail.com
RUN yum install -y httpd \ 
    zip \ 
    unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/spourmo.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip spourmo.zip
RUN la -a
RUN cp -rvf spourmo/* .
RUN rm -rf spourmo spourmo.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
