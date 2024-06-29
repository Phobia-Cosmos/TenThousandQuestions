#!/bin/bash

# 文件路径
FILE_PATH="/Users/liuzihao/Desktop/Obsidian/Mac/日常/每日问题.md"
# Git仓库路径
REPO_PATH="/Users/liuzihao/Desktop/Obsidian/Mac/日常/"

# 切换到Git仓库目录
cd "$REPO_PATH"

# 检查文件是否有修改
if git diff --quiet "$FILE_PATH"; then
    echo "文件没有修改，不需要推送。"
else
    # 添加更改并提交
    git add "$FILE_PATH"
    CURRENT_DATE=$(date +"%Y-%m-%d")
    git commit -m "每日问题自动更新 - $CURRENT_DATE"
    
    # 推送到GitHub
    git push origin main
    echo "文件已修改，已推送到GitHub。"
fi
