ECHO Creating OUs
New-ADOrganizationalUnit -Name FA_Computers -Path "DC=fortuneautomotive,DC=com" -Description "FA Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "FA_Computers,DC=fortuneautomotive,DC=com"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=FA_Computers,DC=fortuneautomotive,DC=com"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=FA_Computers,DC=fortuneautomotive,DC=com"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=FA_Computers,DC=fortuneautomotive,DC=com"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=FA_Computers,DC=fortuneautomotive,DC=com"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=FA_Computers,DC=fortuneautomotive,DC=com"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=FA_Computers,DC=fortuneautomotive,DC=com"
 New-ADOrganizationalUnit -Name Servers -Path "OU=FA_Computers,DC=fortuneautomotive,DC=com"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=FA_Computers,DC=fortuneautomotive,DC=com"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=FA_Computers,DC=fortuneautomotive,DC=com"
New-ADOrganizationalUnit -Name FA_Groups -Path "DC=fortuneautomotive,DC=com" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name FA_Privileged_Accounts -Path "DC=fortuneautomotive,DC=com" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name FA_Users -Path "DC=fortuneautomotive,DC=com" -Description "Non-Privileged Accounts"
ECHO Done creating OUs
ECHO.
