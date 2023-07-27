# repo

```shell
curl https://mirrors.cernet.edu.cn/git-repo -o repo
chmod +x repo
```

```shell
export REPO_URL='https://mirrors.cernet.edu.cn/git-repo'
```

## aosp

```shell
mkdir AOSP
repo init -u https://mirrors.tuna.tsinghua.edu.cn/git/AOSP/mirror/manifest --mirror
repo sync
git daemon --verbose --export-all --base-path=./AOSP ./AOSP
# git daemon --verbose --export-all --base-path=/home/git/aosp /home/git/aosp
```
