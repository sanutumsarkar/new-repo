FROM ubuntu:18.04
MAINTAINER sanutumsarkar@outlook.com
RUN apt-get update && apt-get install -y apache2 \
    zip \
    unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/speed.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip speed.zip
RUN cp -rvf markups-speed/* .
RUN rm -rf _MACOSX markupds-speed speed.zip
CMD  [“/usr/sbin/httpd”, “-D” "FOREGROUND"]
EXPOSE 82
