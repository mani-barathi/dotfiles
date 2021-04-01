function IsAdmin{  
    [OutputType([bool])]
    param()
    process {
        [Security.Principal.WindowsPrincipal]$user = [Security.Principal.WindowsIdentity]::GetCurrent();
        return $user.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator);
    }
}

function Prompt {
	
	if((IsAdmin)){
		write-host "Admin" -NoNewline -ForegroundColor Cyan -BackgroundColor DarkRed 
	}
	else{
		write-host "$env:UserName" -NoNewline -ForegroundColor Cyan -BackgroundColor DarkRed 
	}
	write-host "@ " -NoNewline -ForegroundColor White -BackgroundColor DarkRed 
	write-host "$pwd $" -NoNewline -ForegroundColor White -BackgroundColor DarkRed 
	return " "
}
