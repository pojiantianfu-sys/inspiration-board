# inspiration-board · 选题灵感工作台

给一个对标账号（抖音/小红书/视频号/B站），自动拆成两类资产：

1. **可点击的视频灵感台 HTML**：按内容方向分类，卡片直接跳原片
2. **句式对版表**：左列对标账号原句，右列你照着这个句式能说的话

## 触发方式

跟豆包/任意 Agent 说：
- "帮我看看某某账号"
- "我想对标某某"
- "给我找点选题灵感"
- "做个灵感台"

## 安装

### 方式 1：豆包办公（最常用）

把整个 `inspiration-board/` 文件夹放到：
```
~/Library/Application Support/Doubao/Default/.doubao/agent_mode/workspace/.user_skills/
```
重启豆包即可。

### 方式 2：Claude Code / Codex / 其他 Agent

```bash
bash install-skill.sh link /path/to/inspiration-board
```

## 目录结构

```
inspiration-board/
├── SKILL.md                      # 主流程
├── assets/
│   └── inspiration-board.html     # 灵感台 HTML 模板
└── references/
    ├── pattern-matching.md       # 10 种句式骨架
    └── hook-taxonomy.md          # 钩子分类 + 去 AI 味清单
```

## 更新

```bash
git pull
```
