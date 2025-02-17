### Do zarządzania firewall możemy użyc serwisu firewalld
```
# To trzeba zainstalować
firewalld

# Wyświetlić wszystko z domyslnej zony/profilu
firewall-cmd --list-all

# Wyświetlenie wszystkiego w danej zonie
firewall-cmd --list-all --zone=work

# Wyświetlić zony/profile
firewall-cmd --get-zones

# Wyświetlenie dostępnych interfejsów
firewall-cmd --list-interfaces

# Zmiana interfejsu w zonie work
firewall-cmd --change-interface=enp1s0 --zone=work

# Wyświetlenie domyslnej zony
firewall-cmd --get-default-zone

# Zmiana domyslnej zony
firewall-cmd --set-default--zone=wrok

# Dodanie serwisu 
firewall-cmd --add-service=http

# Dodanie ip źródła
firewall-cmd --add-source=192.168.99.0/24

# Usunięcia ip źródła
firewall-cmd --remove-source=192.168.99.0/24
```