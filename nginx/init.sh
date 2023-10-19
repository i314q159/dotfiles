mkdir -pv ~/podman/nginx
podman run -d --name=nginx -e TZ=Asia/Shanghai -p 1234:80 -p 1443:443 -v ~/podman/ngnix/:/config --restart unless-stopped lscr.io/linuxserver/nginx:latest