# alias
Set-Alias open explorer
Set-Alias tm recycle-bin

# replace built-in scoop search
Invoke-Expression (&scoop-search --hook)

# posh-git
Import-Module posh-git

# scoop-completion
Import-Module scoop-completion
