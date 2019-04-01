# brutforce script to make some organizational units

# you need to change "DC=ad,DC=sparky-tech,DC=com" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name WD_Computers -Path "DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1" -Description "WD Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=WD_Computers,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=WD_Computers,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=WD_Computers,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=WD_Computers,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=WD_Computers,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=WD_Computers,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=WD_Computers,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
 New-ADOrganizationalUnit -Name Servers -Path "OU=WD_Computers,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=WD_Computers,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=WD_Computers,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
New-ADOrganizationalUnit -Name WD_Groups -Path "DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name WD_Privileged_Accounts -Path "DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name WD_Users -Path "DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=WD_Groups,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=WD_Groups,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=WD_Groups,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=WD_Groups,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=WD_Groups,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=WD_Groups,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=WD_Groups,DC=AD,DC=wlldnhm/IFT220_Lab2,DC=wdunham1"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
