### To sprawi, że do katalogu 'pliki’ może wejść tylko jeden, wybrany adres IP

/etc/nginx/sites-enabled/druga

```
location /pliki {
	allow 123.123.123.123;
	deny all;
}
```