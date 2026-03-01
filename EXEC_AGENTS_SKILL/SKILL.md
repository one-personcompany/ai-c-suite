---
name: exec-agents
description: "使用 Codex 执行器，让虚拟高管团队成员（CEO/CTO/COO/CFO/CMO）审阅代码、分析问题或提供建议。AGENTS.md 从 GitHub 实时获取。"
homepage: https://github.com/edgefn/ai-c-suite
metadata: { "openclaw": { "emoji": "🏢", "requires": { "bins": ["codex", "curl"] } } }
---

# Exec Agents Skill

让虚拟高管团队成员（CEO/CTO/COO/CFO/CMO）参与决策、代码审阅或分析。

## 使用场景

✅ **使用这个 skill 当：**
- 需要从 CEO 角度评估战略影响
- 需要 CTO 评估技术架构
- 需要 COO 评估运营效率
- 需要 CFO 评估财务影响
- 需要 CMO 评估品牌/营销影响
- 让多个角色一起审阅代码变更

## 可用角色

| 角色 | GitHub 路径 |
|------|-------------|
| CEO | edgefn/ai-c-suite/blob/main/CEO/AGENTS.md |
| CTO | edgefn/ai-c-suite/blob/main/CTO/AGENTS.md |
| COO | edgefn/ai-c-suite/blob/main/COO/AGENTS.md |
| CFO | edgefn/ai-c-suite/blob/main/CFO/AGENTS.md |
| CMO | edgefn/ai-c-suite/blob/main/CMO/AGENTS.md |

## 命令格式

### 读取角色定义（从 GitHub 实时获取）

```bash
# CEO
curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/CEO/AGENTS.md"

# CTO
curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/CTO/AGENTS.md"
```

### 执行角色分析

```bash
# 让 CEO 审阅
(cat <(curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/CEO/AGENTS.md"); echo "---"; echo "请审阅以下代码变更，给出战略建议：$DIFF_CONTENT") | codex exec -

# 让 CTO 评估
(cat <(curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/CTO/AGENTS.md"); echo "---"; echo "请评估以下技术架构：$YOUR_QUESTION") | codex exec -
```

## 使用示例

### 让 CEO 评估代码变更

```bash
# 获取最新代码 diff
DIFF=$(git diff HEAD~5)

# 让 CEO 审阅
(cat <(curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/CEO/AGENTS.md"); echo "---"; echo "请从CEO角度审阅以下代码变更，给出战略建议和业务影响分析：\n\n$DIFF") | codex exec -
```

### 让 CFO 分析成本

```bash
QUESTION="我们需要投入 100 万人民币开发一个新功能，请从财务角度评估 ROI"

(cat <(curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/CFO/AGENTS.md"); echo "---"; echo "$QUESTION") | codex exec -
```

### 让多个角色一起评估

```bash
# 可以并行调用多个角色
# CEO 关注战略影响
# CTO 关注技术可行性
# CFO 关注成本效益
```

## 快捷命令

```bash
# 快速获取角色定义
curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/CEO/AGENTS.md"

# 快速执行 CEO 分析
curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/CEO/AGENTS.md" | codex exec - "请分析这个问题"
```

## 注意事项

- 每次执行会从 GitHub 获取最新的 AGENTS.md，确保角色定义是最新的
- Codex 会消耗 API credits
- 可以通过 CODE environment variable 传入额外配置
