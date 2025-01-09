#!/bin/bash

# 设置目标文件夹和最大文件大小（单位：KB）
FOLDER="source/gallery"  # 替换为目标文件夹路径
MAX_SIZE=800             # 最大文件大小 800 KB

# 遍历文件夹中的所有图片
find "$FOLDER" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | while read -r file; do
    # 转换图片到目标大小
    convert "$file" -define jpeg:extent=${MAX_SIZE}k "$file"
    echo "Processed: $file"
done
