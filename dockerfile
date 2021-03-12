FROM oraclelinux:8.3
MAINTAINER av@oracle.com
RUN dnf install httpd -y
COPY index.html /var/www/html/index.html
COPY friends.png /var/www/html/friends.png
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
