# scoop-completion
Import-Module scoop-completion

# replace built-in scoop search
Invoke-Expression (&scoop-search --hook)

# oh-my-posh
oh-my-posh init powershell --config='~/scoop/apps/oh-my-posh/current/themes/onehalf.minimal.omp.json' | Invoke-Expression

# alias
Set-Alias open explorer
Set-Alias edge MicrosoftEdge
Set-Alias tm recycle-bin
