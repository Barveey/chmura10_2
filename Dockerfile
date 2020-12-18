FROM ubuntu:18.04
LABEL maintainer="BW"
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y apache2
EXPOSE 80
VOLUME /var/www/html
COPY index.html /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]