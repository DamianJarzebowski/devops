To restart system
```
ctr + alt + del
``` 

press 
```
e
```
 in load screen

behind command linux add 

```
rd.break
```

F10 or ctr + x to continue loading system with extra option

```
mount -o remount,rw /sysroot
```

```
chroot /sysroot
```

```
passwd
```

2 approuch now

```
load_policy -i
``` 

```
chcon -t shadow_t /etc/shadow
```

or

```
touch /.autorelabel
```
