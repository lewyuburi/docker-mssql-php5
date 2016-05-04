# ppoffice/apache-php-mssql-odbc
Dockerfile of Apache & PHP Environment with Microsoft SQL Server ODBC Driver Support Built on Ubuntu Trusty

```bash
docker pull lyubb/docker-mssql-php5
```

## Build
```bash
docker build -t lyubb/docker-mssql-php5 .
```

## Running
```bash
docker run -d -p 80:80 lyubb/docker-mssql-php5
```
With custom `www` folder:
```bash
docker run -d -p 80:80 -v (your site's folder):/var/www/ lyubb/docker-mssql-php5
```

# Other
Uncomment these two lines in Dockerfile to fix "non-UTF8" chars encoding and time format problems:
```bash
ADD freetds.conf /etc/freetds/
ADD locales.conf /etc/freetds/
```

## Issues
[https://github.com/lyubb/docker-mssql-php5](https://github.com/ppoffice/apache-php-mssql-odbc/issues)
