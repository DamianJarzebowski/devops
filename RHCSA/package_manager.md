Aby dodać serwer do ściągania paczek i apliakcji systemowych

```
dnf config-manager --add-repo="http://rhcsa-master.rhcsa.lan/BaseOS"
```

Sprawdzenie dostępnych repozytoriów

```
dnf repolist
```

# Na Egzaminie

Wejść tu

```
cd /etc/yum.repos.d/r
```

Znaleźć plik z repo i ustawić

```
gpgcheck=0
```

Jak wyświetlic listę repozytoriów
```
dnf repolist --all
```

Jak wyłączyć repozytorium
```
dnf config-manager --disable <repo_id>
```

Sprawdzenie historii instalacji
```
dnf history

dnf history info 2
```

Wycofanie zmian do id 1
```
dnf history rollback 1
```