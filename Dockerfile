FROM ppoffice/mssql-odbc
MAINTAINER PPOffice <ppoffice_2008@163.com>

RUN apt-get update && \
    apt-get -y install apache2 php5 php5-mssql && \
    apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN /usr/sbin/a2enmod rewrite
RUN php5enmod mssql

# Edit apache2.conf to change apache site settings.
ADD apache2.conf /etc/apache2/

# Edit 000-default.conf to change apache site settings.
ADD 000-default.conf /etc/apache2/sites-available/

# Uncomment these two lines to fix "non-UTF8" chars encoding and time format problems
# ADD freetds.conf /etc/freetds/
# ADD locales.conf /etc/freetds/

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
