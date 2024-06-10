# Własne komunikaty błędów

```
cd /etc/nginx/sites-enabled/
vim druga
```

### w pliku konfiguracyjnym:

W przypadku błędu 404 zostanie wyświetlona strona error404.html

```
...
server_name sub2.hehel.xyz  sub3.hehel.xyz;
error_page 404 /error404.html;
...
```

### na koniec tylko:

```
nginx -t 
nginx -s reload
```

