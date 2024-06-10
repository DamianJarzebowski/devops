## Wysyłanie klucza SSH na wskazany serwer

``` 
ssh-copy-id root@1.2.3.4 
```

ssh-copy-id może przyjąć dodatkowy parametr -i w którym, możemy wskazać który klucz ma być podpięty, jeśli mamy więcej niż jeden.

```
ssh-copy-id -i ~/.ssh/id_rsa root@1.2.3.4
```

Polecenie ssh-copy-id nie robi nic innego niż to, że wkleja nasz klucz publiczny SSH do .ssh/authorized_keys w folderze domowym użytkownika, na którego się logujemy. Możemy też ręcznie dopisać nasz klucz w tym pliku. Jeżeli nie istnieje to możemy stworzyć ten plik(oraz folder nadrzędny .ssh, jeżeli taki też nie istnieje).

## Aktualizacja listy pakietów (w przypadku serwerów opartych na Ubuntu/Debianie)

``` 
apt update
apt upgrade
```