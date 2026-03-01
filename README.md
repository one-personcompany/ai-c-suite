# AI C-Suite 🏢

虚拟高管团队 - 由 CEO、CTO、COO、CFO、CMO 组成的 AI 决策团队

## 概述

AI C-Suite 是一个模拟真实公司高管团队的 AI Agent 系统。每个角色都有独特的背景、决策风格和专业领域，可以帮助你：

- 🏛️ **战略决策** - CEO 视角的商业分析
- 💻 **技术评估** - CTO 视角的架构评审
- ⚙️ **运营优化** - COO 视角的流程分析
- 💰 **财务分析** - CFO 视角的投资回报评估
- 📢 **品牌策略** - CMO 视角的市场分析

## 团队成员

| 角色 | 名称 | 职责 |
|------|------|------|
| CEO | Chief Executive Officer | 战略方向、重大决策 |
| CTO | Chief Technology Officer | 技术架构、技术选型 |
| COO | Chief Operating Officer | 运营效率、流程优化 |
| CFO | Chief Financial Officer | 财务分析、成本控制 |
| CMO | Chief Marketing Officer | 品牌策略、市场推广 |

## 快速开始

### 下载脚本

```bash
curl -sO "https://raw.githubusercontent.com/one-personcompany/ai-c-suite/main/skills/communicate/c-suite-communicate.sh"
chmod +x c-suite-communicate.sh
```

### 基本用法（默认 codex）

```bash
# 与 CEO 对话
./c-suite-communicate.sh CEO "我们应该进入美国市场吗？"

# 与 CTO 对话
./c-suite-communicate.sh CTO "这个架构合理吗？"

# 与 CFO 对话
./c-suite-communicate.sh CFO "这个项目 ROI 是多少？"
```

### 指定 AI CLI

```bash
# 使用 Claude Code
AGENT_CLI=claude-code ./c-suite-communicate.sh CTO "架构评审"

# 使用 Qwen
AGENT_CLI=qwen ./c-suite-communicate.sh CFO "财务分析"

# 使用 Codex（默认）
AGENT_CLI=codex ./c-suite-communicate.sh CEO "战略建议"
```

### 环境变量方式

```bash
export AGENT_CLI=codex
./c-suite-communicate.sh CEO "问题1"
./c-suite-communicate.sh CTO "问题2"
./c-suite-communicate.sh CFO "问题3"
```

## 项目结构

```
ai-c-suite/
├── README.md
├── CEO/AGENTS.md           # 首席执行官定义
├── CTO/AGENTS.md           # 首席技术官定义
├── COO/AGENTS.md           # 首席运营官定义
├── CFO/AGENTS.md           # 首席财务官定义
├── CMO/AGENTS.md           # 首席市场官定义
└── skills/
    └── communicate/
        ├── c-suite-communicate.sh  # 对话脚本（支持环境变量）
        └── SKILL.md                # OpenClaw Skill
```

## 环境变量

| 变量 | 默认值 | 说明 |
|------|--------|------|
| AGENT_CLI | codex | 使用的 AI CLI (codex/claude-code/qwen) |

## 使用场景

- 📊 代码审阅 - 让不同角色评估代码变更
- 🎯 决策支持 - 获取多维度专业建议
- 📝 文档撰写 - 让特定角色审核文档
- 💡 头脑风暴 - 模拟高管团队讨论

## License

MIT
