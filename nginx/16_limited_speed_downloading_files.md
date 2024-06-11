## spowolnienie pobierania dużego pliku

### Tworzymy duży plik (300 MB)
```
dd if=/dev/urandom of=/sciezka/duzy_plik bs=1M count=300
```
### Spowalniamy pobieranie go do około 50kb/s
```
location /duzy_plik {
    limit_rate 50k;
}
```
