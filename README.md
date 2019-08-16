Installs docker for php7, mysql 5.7, nginx, composer (available globally)

```
./dock up
```

and navigate to http://127.0.0.1:8181
and navigate to https://127.0.0.1:8182

Database is persisted inside `_docker/mysql_data/`

if you need more, have at it with the following commands:
```
./dock --help
```

once in bash, you may install php extensions like so:
```
docker-php-ext-install exif mysql
```

You may wish to generate your own certificate.
```
cd _docker
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt
```


Wish to destroy all docker things?

https://gist.github.com/unamatasanatarai/58e10f6e654a7ede143a301519d0050c