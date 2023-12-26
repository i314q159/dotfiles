# root
curl -fsSL https://get.docker.com -o install-docker.sh && sh install-docker.sh --mirror Aliyun
systemctl enable docker
usermod -aG docker i314q159
systemctl daemon-reload
systemctl restart docker
