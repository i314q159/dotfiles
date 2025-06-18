podman stop $(podman ps -a -q)
podman rm $(podman ps -a -q)
podman rmi $(podman image ls -q)