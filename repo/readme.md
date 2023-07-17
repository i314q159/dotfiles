# repo

```shell
curl https://mirrors.tuna.tsinghua.edu.cn/git/git-repo -o repo
chmod +x repo
```

```shell
export REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo'
```

## aosp

```shell
mkdir AOSP
repo init -u https://mirrors.tuna.tsinghua.edu.cn/git/AOSP/mirror/manifest --mirror
repo sync
git daemon --verbose --export-all --base-path=./AOSP ./AOSP
# git daemon --verbose --export-all --base-path=/home/git/aosp /home/git/aosp
```
