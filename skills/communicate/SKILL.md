---
name: c-suite-communicate
description: "与虚拟高管团队（CEO/CTO/COO/CFO/CMO）对话，让不同角色分析问题、审阅代码或提供建议。"
homepage: https://github.com/one-personcompany/ai-c-suite
metadata: { "openclaw": { "emoji": "🏢", "requires": { "bins": ["curl", "codex"] } } }
---

# C-Suite Communicate Skill

与虚拟高管团队成员对话，获取不同角色的专业视角。

## 使用场景

让虚拟高管团队帮助你：
- 战略决策分析（CEO）
- 技术架构评估（CTO）
- 运营效率分析（COO）
- 财务影响评估（CFO）
- 品牌营销建议（CMO）

## 下载脚本

```bash
curl -sO "https://raw.githubusercontent.com/one-personcompany/ai-c-suite/main/skills/communicate/c-suite-communicate.sh"
chmod +x c-suite-communicate.sh
```

## 基本用法

```bash
# 与 CEO 对话
./c-suite-communicate.sh CEO "我们应该进入美国市场吗？"

# 与 CTO 对话
./c-suite-communicate.sh CTO "这个架构合理吗？"

# 与 CFO 对话
./c-suite-communicate.sh CFO "这个项目 ROI 是多少？"

# 与 COO 对话
./c-suite-communicate.sh COO "运营影响如何？"

# 与 CMO 对话
./c-suite-communicate.sh CMO "品牌策略建议？"
```

## 指定 AI CLI

```bash
# 使用 Claude（默认）
./c-suite-communicate.sh CEO "问题"

# 使用 Codex
AGENT_CLI=codex ./c-suite-communicate.sh CEO "问题"

# 使用 Qwen
AGENT_CLI=qwen ./c-suite-communicate.sh CEO "问题"
```

## 环境变量

```bash
export AGENT_CLI=claude
./c-suite-communicate.sh CEO "问题1"
./c-suite-communicate.sh CTO "问题2"
./c-suite-communicate.sh CFO "问题3"
```

## 角色选择

| 角色 | 适用场景 |
|------|----------|
| CEO | 战略方向、重大决策 |
| CTO | 技术方案、架构设计 |
| COO | 运营影响、执行效率 |
| CFO | 成本分析、投资回报 |
| CMO | 品牌影响、市场策略 |

## 注意事项

- 需要对应 CLI 已安装 (codex/claude/qwen)
- 角色定义从 GitHub 实时获取
- 每次对话会消耗对应 CLI 的 API tokens
