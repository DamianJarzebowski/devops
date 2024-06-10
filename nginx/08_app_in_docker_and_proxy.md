### Uruchamiamy dockera z wordpressem na porcie 8080

```
docker run -d -p 8080:80 wordpress
```

Użyte parametry:

-d – uruchamia kontener w tle
<br>
-p wystawia porty na zewnątrz (tutaj port 8080 serwera prowadzi do portu 80 kontenera)

### Przekierowanie głównego serwera wprost na dockera z WP

```
location / { 
	proxy_set_header Host $host;
	proxy_pass http://localhost:8080; 
}
```

### logowanie prawdziwych IP w dockerze (za Cloudflare)
Do aplikacji zostaje przekazany adres ip z którego przyszło zapytanie, inaczej wyświetli adres maszyny na, której stoi docker

```
location / {
	proxy_set_header Host $host;
    ### TA ZMIENNA ###
	proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
	proxy_pass http://localhost:8080; 
}
```

### proxowanie cudzej strony WWW i podmiana jej treści

```
location / {
    
    <!-- Po tej zmianie wp będzie myśleć, że jest odpalana lokalnie -->
	proxy_set_header Host 'www.wp.pl';

    <!-- Podmienianie tekstu na stronie -->
	sub_filter 'tekst źródłowy' 'tekst docelowy';

	proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
	proxy_pass https://www.wp.pl; 
}
```

Uwaga! Jeśli strona docelowa nie mieści się w domyślnych buforach serwera Nginx, możliwe, że konieczne będzie zwiększenie tych buforów. Dopisz to proszę wewnątrz sekcji „location”:

proxy_buffer_size          128k;
<br>
proxy_buffers            4 256k;
<br>
proxy_busy_buffers_size    256k;