# alias
Set-Alias open explorer
Set-Alias tm recycle-bin

# scoop-completion
Import-Module scoop-completion

# scoop-search
Invoke-Expression (&scoop-search --hook)

# starship
Invoke-Expression (&starship init powershell)

# repo
function repo {
    python d:/repo/repo $args
}

# ghproxy
function ghproxy-git {
    git clone https://ghproxy.net/$args
}
function ghproxy-aria2c {
    aria2c https://ghproxy.net/$args
}
