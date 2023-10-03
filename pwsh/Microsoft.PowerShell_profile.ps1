# alias
Set-Alias open explorer
Set-Alias tm recycle-bin

# posh-git
Import-Module posh-git

# scoop-completion
Import-Module scoop-completion

# repo
function repo {
    python d:/repo/repo.py $args
}

# ghproxy
function ghproxy {
    git clone https://ghproxy.com/$args
}