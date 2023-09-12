# alias
Set-Alias open explorer
Set-Alias tm recycle-bin

# posh-git
Import-Module posh-git

# scoop-completion
Import-Module scoop-completion

# replace built-in scoop search
Invoke-Expression (&scoop-search --hook)
