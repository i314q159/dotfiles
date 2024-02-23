mkdir -pv ./registry
docker run -d -p 5000:5000 -v ./registry:/var/lib/registry --restart=always --name=registry docker.io/library/registry:latest
