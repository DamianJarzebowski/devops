Mamy 3 ustawienia SELINUX

- enforcing - selinux egzekwuje wszystkie polityki
- permissive - selinux nie egzekwuje polityk ale loguje wszystko w logach
- disabled - selinux jest wyłączony

Można dynamicznie przełączać się pomiędzy enforcing a permissive bez restartu systemu. Pozostałe opcje przełączenia wymagają restartu systemu.

W nowszej wersji systemu aby w pełni wyłączyć SELINUX należy przekazać taką komendę 

```
grubby --update-kernel ALL --args selinux=0
```

Jak sprawdzic jak ustawiony jest selinux


```
getenforce
```

Zmiana selinux na permisive

```
setenforce 0
```

Zmiana selinux na enforceing

```
setenforce 1
```

### Powyższe zmieni ustawienia selinux tylko tymczasowo, po restarcie maszyny selinux powróci do ustawień z pliku w catalogu /etc/selinux/config dlatego to tam należy zmienić ustawienia na stałe.

<br>
W katalogu /var/log/audit mamy plik audit.log <br>
Jeśli znajdziermy tam avc: denied oznacza to, że selinux zablokował dostęp do pliku.

Lepiej jednak sprawdzić za pomocą 
```
journalctl
```
