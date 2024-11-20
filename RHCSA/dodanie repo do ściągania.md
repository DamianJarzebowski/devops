cd /etc/yum.repos.d

cat *

Powinno zwrócić taki wynik
```
[rhcsa-master.rhcsa.lan_AppStream]
name=created by dnf config-manager from http://rhcsa-master.rhcsa.lan/AppStream
baseurl=http://rhcsa-master.rhcsa.lan/AppStream
enabled=1
gpgcheck=0
[rhcsa-master.rhcsa.lan_BaseOS]
name=created by dnf config-manager from http://rhcsa-master.rhcsa.lan/BaseOS
baseurl=http://rhcsa-master.rhcsa.lan/BaseOS
enabled=1
gpgcheck=0
```

## Lub można dodać w ten sposób
```
dnf config-manager --add-repo "URL"
```