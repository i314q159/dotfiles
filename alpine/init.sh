cp /etc/apk/repositories /etc/apk/repositories.bp
sed -i 's#https\?://dl-cdn.alpinelinux.org/alpine#https://mirrors.cernet.edu.cn/alpine#g' /etc/apk/repositories
apk update