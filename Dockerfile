FROM alpine
MAINTAINER Sarfaraz Ali Khan <mrkhan1417@gmail.com>

RUN apk --update add apache2 php5-apache2 && rm -f /var/cache/apk/*
RUN sed -i "s|/var/www/localhost/htdocs|/www|g" /etc/apache2/httpd.conf

EXPOSE 80
RUN mkdir /run/apache2
WORKDIR /www

COPY start.sh /opt/
RUN chmod +x /opt/start.sh
CMD ["/opt/start.sh"]
