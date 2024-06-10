# Git repo to dowload library
## https://github.com/e404/htaccess-for-nginx

### ŻEBY TO DZIAŁAŁO NGINX MUSI WSPIERAĆ LUA ALE ZAINSTALOWALIŚMY WERSJE EXTRAS KTÓRA MA WSZYSTKIE MODUŁY

## Step to reproduce
```
cd /tmp
git clone https://github.com/e404/htaccess-for-nginx
cd htaccess-for-nginx
cp htaccess.lua /etc/nginx
cd /etc/nginx
vim nginx.conf
```

### Do pliku nginx.conf w sekcji 'http’ dodaj:

```
lua_shared_dict htaccess 16m;
rewrite_by_lua_file /etc/nginx/htaccess.lua;
```

<br>

### Następnie w katalogu document root swojej strony stwórz plik .htaccess z odpowiednimi przekierowaniami.

```
nano sites-enabled/druga

<!-- Dopisujemy to -->
rewrite_by_lua_file /etc/nginx/htaccess.lua;

cd /var/www/druga/
nano .htaccess

<!-- dopisujemy to -->
RewriteEngie On
RewriteRule ^info$ /a.php [L]
```