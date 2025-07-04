#!/bin/bash

for file in *; do
  if [ -f "$file" ]; then  # 只处理文件
    extension="${file##*.}"  # 获取扩展名
    # 生成6位随机字符串（数字+大小写字母）
    newname=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 6 | head -n 1)
    # 保留原扩展名（无扩展名的文件会添加随机后缀）
    mv -v -- "$file" "${newname}.${extension}"
  fi
done
