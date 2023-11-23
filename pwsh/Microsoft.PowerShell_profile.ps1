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
    git clone https://ghproxy.net/$args
}
function ghproxy-aria2c {
    aria2c https://ghproxy.net/$args
}

# eza
function ll {
    eza -a --icons
}

# rpc
function rpc {
   aria2c --enable-rpc --rpc-allow-origin-all --rpc-listen-all --continue --dir="D:\aria2_d"
}
