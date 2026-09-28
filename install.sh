#!/bin/bash
# inspiration-board 一句话安装脚本
# 用法: bash -c "$(curl -fsSL https://raw.githubusercontent.com/pojiantianfu-sys/inspiration-board/main/install.sh)"

set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}==> 正在安装 inspiration-board 选题灵感台${NC}"

# 豆包办公的 user_skills 目录（macOS）
TARGET_DIR="$HOME/Library/Application Support/Doubao/Default/.doubao/agent_mode/workspace/.user_skills"

# 临时目录
TMP_DIR=$(mktemp -d)
cd "$TMP_DIR"

echo "==> 从 GitHub 下载..."
if ! git clone --depth 1 https://github.com/pojiantianfu-sys/inspiration-board.git repo 2>/dev/null; then
    echo -e "${RED}下载失败，请检查网络${NC}"
    exit 1
fi

mkdir -p "$TARGET_DIR"

if [ -d "repo/inspiration-board" ]; then
    # 如果已存在，先备份
    if [ -d "$TARGET_DIR/inspiration-board" ]; then
        mv "$TARGET_DIR/inspiration-board" "$TARGET_DIR/inspiration-board.bak.$(date +%s)"
        echo "==> 旧版本已备份"
    fi
    cp -R "repo/inspiration-board" "$TARGET_DIR/"
    echo -e "${GREEN}==> 安装成功！${NC}"
else
    echo -e "${RED}在仓库里没找到 inspiration-board/ 文件夹${NC}"
    exit 1
fi

rm -rf "$TMP_DIR"

echo ""
echo -e "${GREEN}✅ 完成！${NC}"
echo "已安装到："
echo "  $TARGET_DIR/inspiration-board"
echo ""
echo "下一步："
echo "  1. 重启豆包"
echo "  2. 跟豆包说：帮我做个某某账号的灵感台"
