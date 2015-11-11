# ppoffice/apache-php-mssql-odbc
Dockerfile of Apache & PHP Environment with Microsoft SQL Server ODBC Driver Support Built on Ubuntu Trusty

```bash
docker pull ppoffice/apache-php-mssql-odbc
```

## Build
```bash
docker build -t ppoffice/apache-php-mssql-odbc .
```

## Running
```bash
docker run -d -p 80:80 ppoffice/apache-php-mssql-odbc
```
With custom `www` folder:
```bash
docker run -d -p 80:80 -v (your site's folder):/var/www/ ppoffice/apache-php-mssql-odbc
```

# Other
Uncomment these two lines in Dockerfile to fix "non-UTF8" chars encoding and time format problems:
```bash
ADD freetds.conf /etc/freetds/
ADD locales.conf /etc/freetds/
```

## Issues
[https://github.com/ppoffice/apache-php-mssql-odbc/issues](https://github.com/ppoffice/apache-php-mssql-odbc/issues)