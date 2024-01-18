docker run -d --restart=always -p 127.0.0.1:3022:22 -p 127.0.0.1:3000:3000 -v ~/gitea:/data --name gitea docker.io/gitea/gitea:latest
