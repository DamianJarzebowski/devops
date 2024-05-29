# Instalacja

<br>

# Sprawdzenie jakie pakiety możemy zainstalować:

```
apt search nginx | grep nginx
```

- nginx-core – najbardziej ograniczona minimalna wersja potrzebna do działania, nie zawiera praktycznie żadnego modułu
- nginx-full – wszystkie dostępne opcje w nginxie są dostępne w tej wersji
- nginx-extras – zewnętrzne moduły, nietworzone przez twórców nginxa, mocno rozbudowujące funkcje tego narzędzia (najbardziej bogata wersja)

``` 
apt install nginx-extras 
```
<br>

# Sprawdzenie czy nginx nam się uruchomił

```
netstat -plntu
```

netstat – narzędzie które pokazuje co słucha na portach.

Przełączniki:

- p –  pokazuję nazwę programu, który jest na danym porcie
- l – skrót od listen, czyli co słucha
- n – bez rozwijania nazw serwerów
- t – TCP
- u – UDP

<br>

# Sprawdzenie, czy na pewno wszystko poprawnie działa curlem

```
curl http://localhost
```

curl – klient protokołu HTTP

<br>

