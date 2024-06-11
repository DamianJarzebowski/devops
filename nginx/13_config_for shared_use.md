## wspólny plik config dla kilku domen (regexp)

```
set $dom /var/www/domyslna;

if ($host ~ ^sub([0-9])\.hehel\.xyz$){
    set $dom /var/www/sub$1;
}
root $dom;
```

Powyższe ustawi plik konfiguracji na podstawie tego co będzie wewnątrz 
```
^sub([0-9])
```

W adresie hosta i odpowiednio dostosuje plik do załadowania wstawiając do w ścieżce pod $1

Można budować bardziej złożone struktóry za pomocą dłuższych regexów naprzykład:

```
set $dom /var/www/domyslna;

if ($host ~ ^sub([0-9])-([a-z])\.hehel\.xyz$){
    set $dom /var/www/sub$1/$2;
}
root $dom;