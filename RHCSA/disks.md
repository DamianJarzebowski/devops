Rozróżniamy 2 rodzaje partycji

- MBR
- GPT

### MBR
```
Wspiera 4 partycje w tym 1 extend, która moze być rozszeżona na 13 partycji.

Dyski w MBR mogą mieć max 2TiB

Wszystkie partycje w partycji extend to logical partycje

Logical partycje zaczynają się od VDA5 nawet jeśli zrobiliśmy partycje extend jako 2

Nie zaleca się tworzenia partycji extend jako 1

Informacje o partycjach zapisane są tylko na poczatku dysku
```

### GPT

```
Maksymalna liczba partycji to 128

Nie ma partycji extend

Informacje o partycjach sa zapisane na poczatku i końcu dysku
```

Do zarżadzania partycjami w MBR wykorzystujemy 
```
fdisk
```
Do zarżadzania partycjami w GPT wykorzystujemy 
```
gdisk
```

Odświeżyć stan dysków można tak
```
partprobe
```
Wyświetlenie tablicy dysków
```
lsblk
```

### Backup tabeli partycji dla dysku
## DLA MBR

```
# DO
dd if=/dev/vda of=mbr .backup bs=512 count=1

# LOAD
dd if=mbr.backup of=/dev/vdb
```

## Dla GPT

```
# DO
sfdisk -d /dev/vdc > gpt

# LOAD
sfdisk /dev/vdb < gpt>
```
<br>
<br>

```
# Komenda do podglądu dysków i partycji
lsblk 

DLA DYSKÓW MBR

# Wejście w interakcje za pomocą komendy fdisk w interakcje z wybranym dyskiem
fdisk /dev/sda
fdisk -l /dev/sda  <-- Tryb interaktywny do wyswietlenia partycji

# Wyświetlenie partycji
p

# Utworzenie nowej partycji
n

- Trzeba uzuepłnić kilka rzeczy w podaniu sektorów mozna po prostu zrobić +510M ustawi to rozmair dysku na 510Mb

# Wyjście z fdisk z zapisaniem zmian
w

# Wyjście z fdisk bez zapisywania zmian
q

# Otagowanie partycji (W zadaniu może być potrzeba w otagowaniu partycji swap)
t

# Kasowanie partycji
d

DLA DYSKÓW GPT

# Wejście w interakcje za pomocą komendy gdisk w interakcje z wybranym dyskiem
gdisk

Wszystko tak samo jak dla MBR

# Polecenie używane jest do usuwania informacji o systemach plików i tabelach partycji z urządzenia blokowego, w tym przypadku /dev/sdd. Oto, co to dokładnie robi
wipefs -a /dev/sdd
```