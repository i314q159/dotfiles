mkdir -pv ~/podman/jellyfin/config
mkdir -pv ~/podman/qbittorrent/downloads
podman run -d --name=jellyfin -e TZ=Asia/Shanghai -p 8096:8096 -p 8920:8920 -p 7359:7359/udp -p 1900:1900/udp -v ~/podman/jellyfin/config:/config -v ~/podman/qbittorrent/downloads:/data --restart unless-stopped lscr.io/linuxserver/jellyfin:latest