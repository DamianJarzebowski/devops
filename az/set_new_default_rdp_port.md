```

az vm run-command invoke \
  --resource-group <RG> \
  --name <VM> \
  --command-id RunPowerShellScript \
  --scripts "New-NetFirewallRule -DisplayName 'Allow RDP' -Direction Inbound -Protocol TCP -LocalPort 13389 -Action Allow"

az vm run-command invoke \
  --resource-group <RG> \
  --name <VM> \
  --command-id RunPowerShellScript \
  --scripts "Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\' -Name PortNumber -Value 13389"
 
az vm run-command invoke \
  --resource-group <RG> \
  --name <VM> \
  --command-id RunPowerShellScript \
  --scripts "Restart-Service -Name TermService -Force"

```