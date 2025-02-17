Można nim ustawiać joby jak w cromtabie

```
# Sprawdzenie listy zadań
systemctl list-timers

# Sprawdzenie danego joba
systemctl cat nazwaJoba.service

# Sprawdzenie czasu wykonywania joba
systemctl cat nazwaJoba.timer

# Edytowanie timera joba 
systemctl edit nazwaJoba.timer
```

Swoje pliki .service i .timer tworzymy tu
```
cd /etc/systemd/system/
```

Dodawanie swojej konfiguracji
```
# Przed dodaniem nowej konfiguracji
systemctl daemon-reload 

# Włączenie nowego joba
systemctl enable --now nazwaJoba.timer
```