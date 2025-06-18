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
repo init -u https://mirrors.tuna.tsinghua.edu.cn/git/AOSP/platform/manifest
repo init -u https://mirrors.tuna.tsinghua.edu.cn/git/AOSP/platform/manifest -b android-4.0.1_r1
repo init -u https://mirrors.tuna.tsinghua.edu.cn/git/AOSP/mirror/manifest --mirror
# git daemon --verbose --export-all --base-path=/home/git/aosp /home/git/aosp
```
