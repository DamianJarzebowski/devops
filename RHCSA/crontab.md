crontab służy do terminowego wykonywania zadań. Jeśli ustawi go zwykł user będą to zadania wykonane tylko dla tego usera, jesli root będą one globalne.

```
crontab -e
```

```
# Pokazuje wszystkie joby
crontab -l

# Kasuje wszystkie joby
crontab -r

# Jako root można ustawić joba dla każdego usera
crontab -e -u username
 
```

W katalogu /etc znajdują się foldery cron.daily, cron.hourly itp, gdzie mozemy umieścić skrypt i zgodnie z nazwą folderu bedzie on tak czesto uruchamiany

W pliku crontab mamy pomocną ściąge jak opisywać zadania