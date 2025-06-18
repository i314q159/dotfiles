# setx RUSTUP_DIST_SERVER https://mirrors.cernet.edu.cn/rustup
# setx RUSTUP_UPDATE_ROOT https://mirrors.cernet.edu.cn/rustup/rustup

setx RUSTUP_DIST_SERVER https://rsproxy.cn
setx RUSTUP_UPDATE_ROOT https://rsproxy.cn/rustup

rustup toolchain install stable-gnu
rustup default stable-gnu
rustup toolchain uninstall stable-msvc

cp config.toml ~/.cargo/config.toml