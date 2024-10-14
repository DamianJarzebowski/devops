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

Leszek wyjaśnij

DLA MBR

Czy to robi backup dysku?

dd if=/dev/vda of=mbr .backup bs=512 count=1

Załądowanie backupu?
dd if=mbr.backup of=/dev/vdb


Dla GPT

sfdisk -d /dev/vdc > gpt

sfdisk /dev/vdb < gpt>