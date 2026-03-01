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

### 与 CEO 对话
```bash
curl -s "https://raw.githubusercontent.com/one-personcompany/ai-c-suite/main/CEO/AGENTS.md" | codex exec - "我们应该进入美国市场吗？"
```

### 让 CFO 分析 ROI
```bash
curl -s "https://raw.githubusercontent.com/one-personcompany/ai-c-suite/main/CFO/AGENTS.md" | codex exec - "这个项目预期 ROI 是多少？"
```

## 项目结构

```
ai-c-suite/
├── CEO/AGENTS.md       # 首席执行官定义
├── CTO/AGENTS.md       # 首席技术官定义
├── COO/AGENTS.md       # 首席运营官定义
├── CFO/AGENTS.md       # 首席财务官定义
├── CMO/AGENTS.md       # 首席市场官定义
└── skills/
    └── communicate/
        ├── c-suite-communicate.sh  # 对话脚本
        └── SKILL.md                # OpenClaw Skill
```

## 使用场景

- 📊 代码审阅 - 让不同角色评估代码变更
- 🎯 决策支持 - 获取多维度专业建议
- 📝 文档撰写 - 让特定角色审核文档
- 💡 头脑风暴 - 模拟高管团队讨论

## 技术栈

- **Codex** - AI 执行引擎
- **GitHub** - 存储角色定义
- **OpenClaw** - 本地 Skill 集成

## 更新角色定义

编辑对应目录的 AGENTS.md 文件，push 后自动生效。

## License

MIT
