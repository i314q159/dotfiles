setx RUSTUP_UPDATE_ROOT https://mirrors.cernet.edu.cn/rustup/rustup
setx RUSTUP_DIST_SERVER https://mirrors.cernet.edu.cn/rustup

rustup toolchain install stable-gnu
rustup default stable-gnu
rustup toolchain uninstall stable-msvc
