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
function ghproxy-git {
    git clone https://ghproxy.com/$args
}
function ghproxy-aria2c {
    aria2c https://ghproxy.com/$args
}