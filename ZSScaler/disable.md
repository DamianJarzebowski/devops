## Disable Zscaler in Windows
First thing we will need to get this trick working is admin rights in our laptop. Then using Powershell we will disable the network adapter used by Zscaler.
```
Disable the network adapter
Get-NetAdapterBinding -AllBindings -ComponentID ZS_ZAPPRD | Disable-NetAdapterBinding
```
We will also want to enable our VPN once we get our things done without it. We can get it working again enabling the network adapter.


```
Enable network adapter
Get-NetAdapterBinding -AllBindings -ComponentID ZS_ZAPPRD | Enable-NetAdapterBinding
```

## Disable Zscaler in Mac OS
In Mac OS, we can disable our VPN deactivating the service running for Zscaler. We will do it using these commands in our terminal.
```
sudo launchctl unload /Library/LaunchDaemons/com.zscaler.service.plist
sudo launchctl unload /Library/LaunchDaemons/com.zscaler.tunnel.plist
```
As before, we certainly want to activate our VPN again, this can be done via these commands.
```
sudo launchctl load /Library/LaunchDaemons/com.zscaler.service.plist
sudo launchctl load /Library/LaunchDaemons/com.zscaler.tunnel.plist
```


## Source
https://medium.com/@pmorosan/disable-zscaler-without-password-windows-931a0b8b6337