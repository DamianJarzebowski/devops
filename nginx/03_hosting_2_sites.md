# Hostowanie 2 stron ww

- Konfiguracja nginxa znajduję się w lokalizacji /etc/nginx/
- sites-enabled – aktywne strony w nginx (tu wrzucamy symlinki z sites-available)
- sites-available – dostępne do aktywacji strony

# Definicja serwera

```
server {
	listen 80 default_server;
	listen [::]:80 default_server;

        root /var/www/domyslna;

        index index.html index.htm;
        server_name _;
        
        location / {
			try_files $uri $uri/ =404;
		}
}
```

### Objaśnienie poszczególnych linii:

- listen 80 – nasłuch na porcie 80 dla IPv4
- listen [::]:80 – nasłuch na porcie 80 dla IPv6
- default_server – parametr, który sprawie, że jeżeli nginx nie będzie wiedział który serwer - ma uruchomić to wybierze ten
- root – wskazanie, z którego miejsca będzie ładowana strona internetowa
- index – dyrektywa która mówi nam który plik będzie indexem, czyli plikiem startowym w tym katalogu. Przeszukiwanie plików jest kaskadowe. Jeżeli znajdzie pierwszy to kończy pracę, jeśli go nie będzie, to przechodzi do kolejnego.
- server_name _; – jak nazywa się twoja domena. Podkreślenie oznacza serwer domyślny, czyli wszystkie domeny są akceptowane.
- location / – to blok chwytający requesty do konkretnego

# Obsługa drugiej ze stron WWW (plik /etc/nginx/sites-available/druga)

```
server {
	listen 80;
	listen [::]:80;
        root /var/www/druga;
        index index.html index.htm;
        server_name sub2.hehel.xyz;
}
```

### Aktywacja drugiej strony (z pliku 'druga’)
```
cd /etc/nginx/sites-enabled/
ln -s ../sites-available/druga
```
### Sprawdzenie poprawności konfiguracji

```
nginx -t
```

### Załadowanie nowej konfiguracji (o ile powyższe polecenie nie zwróciło błędów)

```
nginx -s reload
```