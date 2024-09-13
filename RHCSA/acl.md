```
setfacl -m u:user4:x filename

r-read
w-write
x-run
```

Monża ustawić uprawnienia do pliku per użytkownik

po wykonaniu 

```
ls -l
```

plik na końcu będzie miał + jeśli ma dodatkowe atrybuty jak acl

```
drwxr-xr-x   3 dj dj 4096 Jun 11 22:47 nginx
drwxrwxr-x+  2 dj dj 4096 Aug 27 20:52 xxx
```

pobieranie acl

```
dj@PL-5CD3262VS3:~/git/devops$ getfacl xxx/
# file: xxx/
# owner: dj
# group: dj
user::rwx
user:dj:rwx
group::r-x
mask::rwx
other::r-x
```

Tworzenie defultowych ustawiń dla wszystkich nowo stwożonych plików w katalogu

```
setfacl -m d:u:user4:rwx /directory
```

```
dj@PL-5CD3262VS3:~/git/devops$ getfacl xxx/
# file: xxx/
# owner: dj
# group: dj
user::rwx
group::r-x
other::r-x
default:user::rwx
default:user:dj:rwx
default:group::r-x
default:mask::rwx
default:other::r-x
```