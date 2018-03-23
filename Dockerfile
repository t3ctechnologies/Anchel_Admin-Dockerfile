from httpd:2.4

MAINTAINER vinay <vinay@shrigowri.com>

COPY linshare-ui-admin /usr/local/apache2/htdocs/linshare-ui-admin
COPY ./httpd.extra.conf /usr/local/apache2/conf/extra/httpd.extra.conf
RUN cat /usr/local/apache2/conf/extra/httpd.extra.conf >> /usr/local/apache2/conf/httpd.conf

COPY ./linshare-ui-admin.conf /usr/local/apache2/conf/extra/linshare-ui-admin.conf

EXPOSE 80
