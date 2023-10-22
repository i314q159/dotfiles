podman run --name=alpine docker.io/library/alpine
podman export alpine > d:/wsl_d/alpine/alpine.tar
podman stop alpine
podman rm alpine
podman rmi docker.io/library/alpine
wsl --import alpine d:/wsl_d/alpine d:/wsl_d/alpine/alpine.tar --version 2