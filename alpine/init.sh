cp /etc/apk/repositories /etc/apk/repositories.bp
sed -i 's#https\?://dl-cdn.alpinelinux.org/alpine#https://mirror.nju.edu.cn/alpine#g' /etc/apk/repositories
# sed -i 's#https\?://mirrors.edge.kernel.org/alpine#https://mirror.nju.edu.cn/alpine#g' /etc/apk/repositories
apk update
