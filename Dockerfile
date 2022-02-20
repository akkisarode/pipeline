FROM centos:7
MAINTAINER akshaydsar@gmail.com
RUN yum install -y httpd \ 
    zip \ 
    unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/hangover.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip hangover.zip
RUN cp -rvf /hangover/* .
RUN rm -rf hangover hangover.zip
CMD ["/usr/dbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
