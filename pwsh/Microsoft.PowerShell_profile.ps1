# alias
Set-Alias open explorer
Set-Alias tm recycle-bin

# scoop-completion
Import-Module scoop-completion

# replace built-in scoop search
Invoke-Expression (&scoop-search --hook)

