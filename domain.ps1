# Build a new DC in a new Forest
# Assumption: new machine uses DHCP

# Change from DHCP to static IP using the same IP
# Get the name of the network adapter
$nicname = Get-NetAdapter  | select -ExpandProperty "name"

# Get current IP Address and Prefix Length (subnet mask)
$ipaddress = Get-NetIPAddress -InterfaceAlias $nicname -AddressFamily IPv4 | select -ExpandProperty "IPAddress"
$prefixlength = Get-NetIPAddress -InterfaceAlias $nicname -AddressFamily IPv4 | select -ExpandProperty "PrefixLength"

# Set the current IP address as static
New-NetIPAddress -InterfaceAlias $nicname -IPAddress $ipaddress -AddressFamily IPv4 -PrefixLength $prefixlength


# Set the DNS address to our loopback
$dnsaddress = "127.0.0.1"
Set-DnsClientServerAddress -InterfaceAlias $nicname -ServerAddresses $dnsaddress


Get-TimeZone | select -ExpandProperty "DisplayName"
Write-Host -ForegroundColor yellow "Is that the correct timezone?"
$Readhost = Read-Host -Prompt ("y | n ")
    Switch ($ReadHost) 
     { 
       Y {Write-Host "Okay, moving on."}
       N {Write-Host -ForegroundColor yellow "Use the GUI to set the timezone. Press Enter when the timezone is set."; Read-Host}
       Default {Write-Host -ForegroundColor yellow "Use the GUI to set the timezone. Press Enter when the timezone is set."; Read-Host}
     }

# Install the AD Services
Write-Host -ForegroundColor yellow "What's the domain name going to be?  It should be ad.<your ASU email prefix>.lan" 
$domainname = Read-Host -Prompt ("")
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName $domainname

dcdiag
Get-Service adws,kdc,netlogon,dns
Get-smbshare

