# oh-my-posh
oh-my-posh --init --shell pwsh --config ~/scoop/apps/oh-my-posh/current/themes/half-life.omp.json | Invoke-Expression

# scoop-complituon
Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion"

# Alias
Set-Alias l ls
Set-Alias open explorer
