Komenda stat wyświetla informacje kiedy plik został dotknięty

```
stat ./ZSScaler/disable.md 

  File: ./ZSScaler/disable.md
  Size: 1204            Blocks: 8          IO Block: 4096   regular file
Device: 8,32    Inode: 286494      Links: 1
Access: (0644/-rw-r--r--)  Uid: ( 1002/      dj)   Gid: ( 1002/      dj)
Access: 2024-10-07 09:09:02.288648746 +0200
Modify: 2024-09-13 12:31:55.002039111 +0200
Change: 2024-09-13 12:31:55.002039111 +0200
 Birth: 2024-09-13 12:26:47.003740792 +0200
```

<br>
<br>
<br>

W pliku 
```
vi /etc/fstab
```
Można ustawić, że system nie będzie modyfikował access time 

<br>
<br>
<br>

Tą komendą ustawimy, że acces pliku nie bedzie zapisywany dla konkretnego pliku 
```
chattr +A filename
```

Tą komendą uniemożliwimy wykonywanie zapisu do pliku i innych
```
chattr +i filename
```

<br>
<br>
<br>

w pliku 
```
/etc/resolv.conf
```

Ustawiamy z jakieog dns ma korzystać system