#base image
FROM ubuntu:16.04

#running command image pada saat build image
RUN apt update && apt install apache2 -y

#copy index.html dari local ke container pada saat build image
COPY index.html /var/www/html

#running syntax pada saat run container
ENTRYPOINT "apachectl" "-DFOREGROUND"
