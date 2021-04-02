# Author      : Manibarathi
# GitHub	  : https://github.com/mani-barathi/dotfiles
# Description : profile file for my Customized Powershell Prompt
#
# This file should be stored in $PROFILE.CurrentUserAllHosts, if it doesn't exists already create using below command
# command:- New-Item $PROFILE.CurrentUserAllHosts -ItemType File -Force
# To enable unsigned script execution of local scripts run the below command as Admin
# command:- Set-ExecutionPolicy -ExecutionPolicy RemoteSigned 


# Find out if the current user has admin rights
$identity = [Security.Principal.WindowsIdentity]::GetCurrent()
$principal = New-Object Security.Principal.WindowsPrincipal $identity
$isAdmin = $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

# shortcuts for switching directories (Modify if Required)
function cdd  { cd C:\Users\manib\Desktop }
function cdr  { cd C:\Users\manib\Desktop\random }
function cddoc  { cd C:\Users\manib\Documents}
function cddownloads { cd C:\Users\manib\Downloads}
function cdp  { cd H:\Projects}

# touch command to create any file from the powershell
function touch{
    $files = $args
	Foreach($file in $files ){
		if(Test-Path $file){
			Write-Output "ERROR: $file already exists"
		}
		else{
			New-Item -ItemType File -Name ($file)
		}
	}
}


function Prompt {
	if($IsAdmin){
		write-host "Admin" -NoNewline -ForegroundColor Cyan -BackgroundColor DarkRed 
	}
	else{
		write-host "$env:UserName" -NoNewline -ForegroundColor Cyan -BackgroundColor DarkRed 
	}
	write-host "@ " -NoNewline -ForegroundColor White -BackgroundColor DarkRed 
	write-host "$pwd $" -NoNewline -ForegroundColor White -BackgroundColor DarkRed 
	return " "
}
