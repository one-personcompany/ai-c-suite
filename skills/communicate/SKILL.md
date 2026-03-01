---
name: c-suite-communicate
description: "与虚拟高管团队（CEO/CTO/COO/CFO/CMO）对话，让不同角色分析问题、审阅代码或提供建议。"
homepage: https://github.com/edgefn/ai-c-suite
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

## 命令格式

```bash
# 方式1: 直接运行脚本
./skills/communicate/c-suite-communicate.sh <角色> <问题>

# 方式2: 使用 curl + codex
curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/<角色>/AGENTS.md" | codex exec - "<问题>"
```

## 使用示例

### CEO - 战略决策
```bash
./c-suite-communicate.sh CEO "我们应该投入 AI Agent 赛道吗？"
```

### CTO - 技术架构
```bash
./c-suite-communicate.sh CTO "这个微服务架构设计合理吗？"
```

### CFO - 财务分析
```bash
./c-suite-communicate.sh CFO "这个项目预期 ROI 是多少？"
```

### COO - 运营评估
```bash
./c-suite-communicate.sh COO "这个功能上线会影响客服团队吗？"
```

### CMO - 品牌策略
```bash
./c-suite-communicate.sh CMO "新品牌定位如何？"
```

## 角色选择

| 角色 | GitHub | 适用场景 |
|------|--------|----------|
| CEO | /CEO/AGENTS.md | 战略方向、重大决策 |
| CTO | /CTO/AGENTS.md | 技术方案、架构设计 |
| COO | /COO/AGENTS.md | 运营影响、执行效率 |
| CFO | /CFO/AGENTS.md | 成本分析、投资回报 |
| CMO | /CMO/AGENTS.md | 品牌影响、市场策略 |

## 更新角色定义

编辑对应目录的 AGENTS.md 文件，push 到 GitHub 后自动生效。

## 注意事项

- 需要 Codex API 配置
- 角色定义从 GitHub 实时获取
- 每次对话会消耗 Codex tokens
