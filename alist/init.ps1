podman run -d -v /mnt/d/podman/alist:/opt/alist/data -p 5244:5244 --name alist docker.io/xhofe/alist
podman exec -it alist ./alist admin set i314q159