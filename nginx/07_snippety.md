### W snipetach chodzi o to, że możemy trzymać fragment konfiguracji osobno i importować go w wielu plikach.

### Tworzymy katalog 
/etc/nginx/snippets/moje.conf

Dodajemy konfiguracje
```
location /pliki {
	allow 123.123.123.123;
	deny all;
}
```

### Uzupełniamy konfiguracje

nano /etc/nginx/sites-enabled/druga
```
server {
	listen 80;
	listen [::]:80;
        root /var/www/druga;
        
        # tutaj jest include:
        include snippets/moje.conf;
        
        index index.html index.htm;
        server_name sub2.hehel.xyz;
}
```

