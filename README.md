# IFT 220 Lab 2
## For ASU's IFT 220 2018 Fall B course.

1.	Install https://www.microsoft.com/en-us/download/details.aspx?id=54616 (Win8.1AndW2K12R2-KB3191564-x64.msu) and optionally a text editor: 
    1.	https://notepad-plus-plus.org/repository/7.x/7.5.9/npp.7.5.9.Installer.x64.exe
    1.	https://download.sublimetext.com/Sublime%20Text%20Build%203176%20x64%20Setup.exe
2.	Fork (top right on the GitHub UI) my code (https://github.com/ericcase/pstest01)
3.	Install Git for Windows (https://git-for-windows.github.io)
    1.	If you installed a text editor, selected it during the install
4.	Launch **PowerShell ISE** and run
```powershell
# Configure Git
git config --global user.name 'your name'
git config --global user.email 'your email address'
git config --global push.default simple

# Install Gosh-Git
Install-Module -Name posh-git -Force # step 1 was a needed update so we could had the Install-Module cmdlet

# Add Posh to PowerShell profile to get the Git prompt
Add-PoshGitToProfile

# Make a directory for you GitHub projects
mkdir .\Documents\GitHub
cd .\Documents\GitHub

# Clone your copy of my code in you new GitHub folder
git clone https://github.com/your_account/pstest01.git
```
5.	Change one or more of the files somehow and save the change(s)
    1.	Use psedit <file name> to edit in ISE, or use your text editor
6.	Add the changed file(s) to the commit (`git add <filename>` or `git add -A`)
7.	Commit (`git commit -m "a note about what you did"`)
8.	Push (`git push --porcelain`)
9.	Refresh your GitHub site and see if the changes are there
