# inspiration-board · 选题灵感工作台

给一个对标账号（抖音/小红书/视频号/B站），自动拆成两类资产：

1. **可点击的视频灵感台 HTML**：按内容方向分类，卡片直接跳原片
2. **句式对版表**：左列对标账号原句，右列你照着这个句式能说的话

---

## 🚀 一键安装（推荐）

打开豆包，**复制下面这段话，粘贴发送**：

> 帮我从 GitHub 下载这个仓库 https://github.com/pojiantianfu-sys/inspiration-board ，把里面的 `inspiration-board` 文件夹安装到我的豆包 user_skills 目录下，装完告诉我重启豆包。

豆包会自动完成下载、安装，30 秒搞定。

---

## 触发方式

装好之后，跟豆包说：
- "帮我看看某某账号"
- "我想对标某某"
- "给我找点选题灵感"
- "做个灵感台"

## 手动安装（备选）

下载 ZIP 后，把 `inspiration-board/` 文件夹放到：
```
~/Library/Application Support/Doubao/Default/.doubao/agent_mode/workspace/.user_skills/
```
重启豆包。

## 更新

在豆包里说："帮我把 inspiration-board 更新到最新版本"

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
