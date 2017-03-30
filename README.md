Installs docker for php7, mysql 5.7, nginx, composer (available globally)

```
docker-compose up
```

and navigate to http://127.0.0.1:8181

if you need more, have at it with the following commands:
```
docker-compose exec app bash
docker-compose exec web bash
docker-compose exec mysql bash
```

once in bash, you may install php extensions like so:
```
docker-php-ext-install exif mysql
```
