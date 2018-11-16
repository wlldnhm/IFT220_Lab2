# Run this after the machine reboots and check the output for errors

dcdiag
Get-Service adws,kdc,netlogon,dns
Get-smbshare
