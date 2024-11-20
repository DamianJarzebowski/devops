### Wysłać do hosta ctr + alt + delete, żeby zrestartować maszynę

### Podczas uruchamiania systemu nasinąć strzałke lub backspace bu zatrzymać ekran na GRUB

### Naciskamy w 1 dostępnej opcji
```
E
```
### Pojawi się skrypt, na końcu komendy zaczynącej się na linux dodajemy
```
rd.break
```
### Naciskamy
```
ctr + x
```
### Powiniśmy mieć switch_root:/

### Przemontowanie systemu w tryb read write
```
mount -o remount,rw /sysroot
```
### Przełączamy się na system, który jest na dysku
```
chroot /sysroot
```
### Ustawiamy hasło roota
```
passwd root
```
### Zabezbpieczenie się przed problemami z selinuxem ponieważ zmieni się kontekts pliku shadow

```
# Wystarczy stworzyć pusty plik autorelable
touch /.autorelabel
```

### Wracamy do uruchamiania systemu
```
exit
exit
```

