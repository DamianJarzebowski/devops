### Sprawdzenie opcji
```
timedatectl --help
```

Jest to easy wszystko czytelne z opcji


### Ustawianie servera NTP

Będziemy potrzebować tej usługi
```
dnf install chrony
```

Wchodzimy do tego pliku i go edytujemy
```
vi /etc/chrony.conf
```

Musimy podać nazwe serwera w pliku
```
server 192.168.101.1 iburst
```

Upeniamy się, że chrony działa
```
systemctl enable --now chronyd
systemctl restart chronyd
chronyc sources

# Na egzaminie może nie działać, serwer mozę byc nie dostępny a REDHAT sprawdzi jedynie konfiguracje
```
