# docker-reistry

/etc/docker/daemon.json

```json
{
  "registry-mirrors": ["https://docker.mirrors.sjtug.sjtu.edu.cn"]
}
```

```shell
sudo systemctl restart docker.service
```
