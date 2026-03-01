# Exec Agents Tool

让 Codex 执行器能够调用虚拟高管团队成员（CEO/CTO/COO/CFO/CMO）进行代码审阅和决策分析。

## 快速开始

### 安装

```bash
# 克隆仓库
git clone https://github.com/edgefn/ai-c-suite.git
cd ai-c-suite/EXEC_AGENTS_SKILL
```

### 使用示例

```bash
# 让 CEO 审阅代码变更
DIFF=$(git diff HEAD~10)
curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/CEO/AGENTS.md" | \
  codex exec - "请从CEO角度评估以下变更的业务影响：\n$DIFF"

# 让 CTO 评估架构
curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/CTO/AGENTS.md" | \
  codex exec - "请评估这个技术架构设计的优缺点"

# 让 CFO 分析ROI
curl -s "https://raw.githubusercontent.com/edgefn/ai-c-suite/main/CFO/AGENTS.md" | \
  codex exec - "这个项目投入100万，预期收益150万，请评估财务可行性"
```

## 角色说明

| 角色 | 职责 | 适用场景 |
|------|------|----------|
| CEO | 战略决策、方向把控 | 重大决策、战略评估 |
| CTO | 技术架构、技术选型 | 技术方案评审、架构设计 |
| COO | 运营效率、流程优化 | 运营影响、执行可行性 |
| CFO | 财务分析、风险评估 | 成本分析、投资回报 |
| CMO | 品牌营销、市场策略 | 品牌影响、市场策略 |

## 更新角色定义

编辑 `../CEO/AGENTS.md` 等文件后，push 到 GitHub 即可自动生效：

```bash
git add .
git commit -m "Update CEO definition"
git push origin main
```
