```
apt install php-fpm
```

### Konfiguracja nginx (uwaga na numer wersji – ustaw swój!)

```
location ~ \.php$ {
		include snippets/fastcgi-php.conf;
		fastcgi_pass unix:/run/php/php7.4-fpm.sock;
}
```