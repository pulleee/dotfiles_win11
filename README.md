# Windows 11 DEV/GAME Machine Setup Guide ###

## Applications 

### GENERAL:
    - valinet.explorerpatcher

### DEV:
    - komorebi / whkd
    - vim.vim

## Install

### GENERAL:
Use the ExplorerPatcher Properties to import the settings: '.\explorerpatcher\<current_settings.reg>'     
### DEV:
Copy the '.config' folder into your home directory. 'xcopy .\.config\ C:\Users\<user>\.config\'
Create Windows PowerShell '$PROFILE' home directory. 'mkdir C:\Users\<user>\WindowsPowerShell\'

Vim: Vim on Windows creates annoying temp files. To prevent this and keep my config, copy the '\_vimrc' into your $VIM directory. Default should be: 'xcopy .\vim\_vimrc C:\Program Files\Vim\_vimrc'

---

### TODO

- install ps1 script
- add other needed apps and configs