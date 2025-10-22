# Windows 11 DEV/GAME Machine Setup Guide ###

## Applications 

### GENERAL:
	- microsoft.powertoys
    - valinet.explorerpatcher

### DEV:
    - komorebi / whkd
    - vim.vim

## Install

### GENERAL:
Use the ExplorerPatcher Properties to import the settings: '.\explorerpatcher\\<current_settings>.reg'
Install PowerToys and only use the color picker and PowerToys Run.
Execute 'gpo_update.ps1' to disable default search via gpos. 
     
### DEV:
Copy the '.config' folder into your home directory. 'xcopy .\\.config\ C:\Users\\<user>\.config\'

Create Windows PowerShell '$PROFILE' home directory. 'mkdir C:\Users\\<user>\WindowsPowerShell\'

Vim: Vim on Windows creates annoying temp files. To prevent this and keep my config, copy the '\_vimrc' into your $VIM directory.
Default should be: 'xcopy .\vim\\_vimrc C:\Program Files\Vim\\_vimrc'

---

### TODO

- install ps1 script
- add other needed apps and configs
- maybe yasb or other tool to show emulated komorebi workspaces?