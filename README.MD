# Dotfiles

**I'm using Windows as Operating System and PowerShell as my default Command Line**

## Tools and Technology (I'm using)

- **[Git](https://git-scm.com/downloads)**
- **[Python](https://www.python.org/downloads/)**
- **[Vim](https://www.vim.org/download.php) (I'm using Gvim)**

## Steps

1. Install all the Tools and Softwares mentioned above
1. Clone the Repo into your Home directory
1. Open PowerShell as Administrator and run the below commands
   ```ps1
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   Get-ExecutionPolicy -List
   ```
1. Open CMD and run the below commands to create Symlinks <br/>
   _Make Sure to change the name from `manib` to `your-name` and directories(If needed)_
   ```ps1
   mklink "C:\Users\manib\.gitconfig" "C:\Users\manib\.dotfiles\.gitconfig"
   mklink "C:\Users\manib\.gvimrc" "C:\Users\manib\.dotfiles\.gvimrc"
   mklink "C:\Users\manib\.vimrc" "C:\Users\manib\.dotfiles\.vimrc"
   mklink "C:\Users\manib\_vimrc" "C:\Users\manib\.dotfiles\_vimrc"
   mklink "C:\Users\manib\Documents\WindowsPowerShell\profile.ps1" "C:\Users\manib\.dotfiles\profile.ps1"
   ```
