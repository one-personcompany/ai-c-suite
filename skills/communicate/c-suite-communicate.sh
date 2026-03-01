#!/bin/bash
# c-suite-communicate.sh - 与虚拟高管团队对话
# 用法: ./c-suite-communicate.sh <角色> <问题>
# 示例: ./c-suite-communicate.sh CEO "我们应该进入美国市场吗？"

ROLE="${1:-CEO}"
QUESTION="$2"

if [ -z "$QUESTION" ]; then
    echo "用法: $0 <角色> <问题>"
    echo "角色可选: CEO, CTO, COO, CFO, CMO"
    exit 1
fi

# GitHub 原始文件地址
AGENTS_URL="https://raw.githubusercontent.com/edgefn/ai-c-suite/main/${ROLE}/AGENTS.md"

# 获取角色定义
AGENTS_CONTENT=$(curl -s "$AGENTS_URL")

if [ -z "$AGENTS_CONTENT" ]; then
    echo "错误: 无法获取 $ROLE 的定义，请检查角色名称是否正确"
    exit 1
fi

# 构建完整的 prompt
FULL_PROMPT="$AGENTS_CONTENT

---

请根据你的角色回答以下问题：

$QUESTION"

# 执行 Codex
echo "$FULL_PROMPT" | codex exec -

exit $?
