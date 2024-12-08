## Zainstalować to do automatycznego uzupełniania przy profilach sieci baardzo pomocne 
```
bash-completion
```

### Pokaże wszystkie dostępne profile
```
nmcli c
```
### Sprawdzenie aktywnych profili
```
nmcli c show --active
```
### Dodanie nowego połączenia, które bedzie domyślnie aktywne
```
nmcli connection add con-name nowy type ethernet ifname enp1s0

enp1s0 - interfejs, któy moze być użyty

# Dodanie flagi "autoconnect" spowoduje, ze profil, bedzie się automatycznie aktywował

nmcli connection add con-name nowy type ethernet ifname enp1s0 autoconnect

```
### Aktywowanie profilu
```
nmcli connection up nowy/id
```
### Sprawdzenie detali profilu sieciowego
```
nmcli c show nowy
```
### Konfigurowanie profilu
```
nmcli c modify nowy

# Wyświetlenie informacji o ip

ip a

# Kopujemy wartość pola inet np. 192.168.101.206/24

# Ustawiamy adres ipv4 na statyczny i gateway

nmcli c modify nowy ipv4.method manual ipv4.addresses 192.168.101.206/24 ipv4.gateway 192/168.101.1

# Jeśli nie damy ipv4 na manual a ustawimy ip to zostaną przydzielone 2, statyczny ustawiony i losowy ustawiony autoamtycznie dlatego trzeba ustawić na manual



# Ustawienie adresu ipv6, na egzamienie będzie podany jaki

nmcli c modify nowy ipv6.addresses 2001:abcd::10/64 ipv6.gateway 2001:abcd::1

# Nalezy pamiętać o odświeżeniu profilu można to zrobić robiąc po prostu tak

nmcli c up nowy


# Ustawienie serwera DNS

nmcli c modify nowy ipv4.dns 192.168.101.1

# Dodanie kolejnego servera DNS

nmcli c modify nowy +ipv4.dns 8.8.8.8
```

### Kasowanie profilu
```
nmcli c delete nowy
```


### Graficzny interfejs do terminalu NMTUI

Pamiętać by ustawić adres ipv4z maską /24 czyli 1.1.1.1/24