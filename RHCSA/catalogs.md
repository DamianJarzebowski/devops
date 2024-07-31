# cd /boot

### vmlinuz-5.14.0-427.20.1.el9_4.x86_64 - kernel jądro systemu

### inittramfs-5.14.0-427.20.1.el9_4.x86_64 - mały linuks, któy znajduje rootowy file system i go zainicjować

### grub2 - jeszcze używany boot manager pakietów zastepowany przez systemmd

# cd /dev

Zawiera pliki urządzeń, pliki tworza się automatycznie.

# cd /etc

Zawiera pliki konfiguracyjne całego systemu i oprogramowania

# cd /home

Domowy katalog użytkownika

# cd /root

Folder roota <br>
root to użytkownik ktorego uuid = 0
```
root@PL-5CD3262VS3:~# id
uid=0(root) gid=0(root) groups=0(root)
```

```
useradd test
cd /etc
vi passwd

Edytując ten fragment
dj:x:1002:1002:,,,:/home/dj:/bin/bash
na to
dj:x:0:1002:,,,:/home/dj:/bin/bash
Sprawimy, że dj będzie rootem
```

# cd /tmp

Wszystkie pliki nie aktualizowane przez 10 dni będą kasowane

# cd /var/tmp

Wszystkie pliki nie aktualizowane przez 30 dni będą kasowane

stat filename - sprawdzu dane o pliku

# cd /usr

 używany do przechowywania danych użytkownika, a także programów i bibliotek, które nie są niezbędne do podstawowego uruchomienia systemu. Jest to miejsce, gdzie znajduje się większość oprogramowania i narzędzi dostępnych dla użytkowników.

 # cd /opt

 Tutaj powiniśmy umieszczać aplikacje bez pakietów rpn

 # cd /var

 powinien przechowywać logi
  /var/lib - dane bazodanowe aplikacji
  /var/spool - do kolejek?
  