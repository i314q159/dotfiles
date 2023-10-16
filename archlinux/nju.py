import os
import wget

url = "https://mirror.nju.edu.cn/archlinux/iso/latest/archlinux-x86_64.iso"
out = f"d:/iso_d/{url.split('/')[-1]}"

if os.path.exists(out):
    os.remove(out)

wget.download(url=url, out=out)
