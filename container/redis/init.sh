podman run -d -p 6379:6379 --name redis docker.io/library/redis
podman exec -it redis redis-cli
