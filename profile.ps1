# Author      : Manibarathi
# Link  	  : https://github.com/mani-barathi/dotfiles
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
function cdhome  { cd $HOME }
function cdd  { cd $HOME\Desktop }
function cdr  { cd $HOME\Desktop\den }
function cddoc  { cd $HOME\Documents}
function cddownloads { cd $HOME\Downloads}
function cdp  { cd H:\Projects}

# Util-scripts 
function downloads_mover() { python $HOME\.dotfiles\util-scripts\downloads_mover.py $HOME }
function note($param) { python $HOME\.dotfiles\util-scripts\note.py $HOME $param }

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

