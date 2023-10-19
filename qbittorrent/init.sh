# username/password is admin/adminadmin.
mkdir -pv ~/podman/qbittorrent/{config,downloads}
podman run -d --name=qbittorrent -e PUID=1000 -e PGID=1000 -e TZ=Asia/Shanghai -e WEBUI_PORT=2333 -p 2333:2333 -p 6881:6881 -p 6881:6881/udp -v ~/podman/qbittorrent/config:/config -v ~/podman/qbittorrent/downloads:/downloads --restart unless-stopped lscr.io/linuxserver/qbittorrent:latest