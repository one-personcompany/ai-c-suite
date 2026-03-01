#!/bin/bash
# c-suite-communicate.sh - 与虚拟高管团队对话
# 用法: AGENT_CLI=codex ./c-suite-communicate.sh <角色> <问题>
# 默认使用 codex，可选: codex, claude, qwen

AGENT_CLI="${AGENT_CLI:-codex}"
ROLE="${1:-CEO}"
QUESTION="$2"

if [ -z "$QUESTION" ]; then
    echo "用法: AGENT_CLI=codex $0 <角色> <问题>"
    echo ""
    echo "示例:"
    echo "  # 默认使用 codex"
    echo "  $0 CEO \"我们应该进入美国市场吗？\""
    echo ""
    echo "  # 指定其他 CLI"
    echo "  AGENT_CLI=claude $0 CTO \"架构评估\""
    echo "  AGENT_CLI=qwen $0 CFO \"财务分析\""
    echo ""
    echo "支持的 CLI: codex, claude, qwen"
    echo "角色: CEO, CTO, COO, CFO, CMO"
    exit 1
fi

# GitHub 原始文件地址
AGENTS_URL="https://raw.githubusercontent.com/one-personcompany/ai-c-suite/main/${ROLE}/AGENTS.md"

# 获取角色定义
AGENTS_CONTENT=$(curl -s "$AGENTS_URL")

if [ -z "$AGENTS_CONTENT" ]; then
    echo "错误: 无法获取 $ROLE 的定义，请检查角色名称是否正确"
    exit 1
fi

# 根据 CLI 执行
if [ "$AGENT_CLI" = "codex" ]; then
    FULL_PROMPT="$AGENTS_CONTENT

---

请根据你的角色回答以下问题：

$QUESTION"
    echo "$FULL_PROMPT" | codex exec -
elif [ "$AGENT_CLI" = "claude" ]; then
    FULL_PROMPT="$AGENTS_CONTENT

---

请根据你的角色回答以下问题：

$QUESTION"
    echo "$FULL_PROMPT" | claude exec -
elif [ "$AGENT_CLI" = "qwen" ]; then
    echo "$AGENTS_CONTENT"
    echo "---"
    echo "问题: $QUESTION"
    qwen "$QUESTION" -y
else
    echo "错误: 不支持的 CLI: $AGENT_CLI"
    echo "支持的: codex, claude, qwen"
    exit 1
fi
