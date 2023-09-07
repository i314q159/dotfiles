go env -w GO111MODULE=on
go env -w GOPROXY="https://goproxy.io,direct"
git clone https://ghproxy.com/https://github.com/Dreamacro/clash
cd clash
go build .
