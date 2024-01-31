curl -O https://ghproxy.net/https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar -xzvf nvim-linux64.tar.gz -C ~/bin
rm nvim-linux64.tar.gz

export PATH=$HOME/bin:$PATH
export PATH=$HOME/bin/nvim-linux64/bin:$PATH
nvim --version
