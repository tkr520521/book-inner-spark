# SPARK 认知重塑系统

> **改变思维方式不是靠读懂一本书，而是靠建立一个新的思考习惯回路。**

## 这是什么

一个基于认知科学的 **书本知识内化系统**。当你用 AI 读完一本书之后，用这个 skill 把书里的思维框架真正「装进」自己的脑子里。

核心是 **SPARK 五步流程**：

`
S  Self-Think      自主思考    强制提取你的真实想法
P  Pattern Mirror  模式镜像    让你看见自己是怎么想的（元认知）
A  Augment         框架增广    书的框架如何一步步分析
R  Review & Contrast 复盘对比  你的 vs 书的 → 差距在哪
K  Keep & Practice 刻意练习    生成 When-Then 行为指令
`

## 科学依据

| 原理 | 来源 | 位置 |
|------|------|------|
| 迁移学习 | Barnett & Ceci, 2002 | 每次变换真实场景练习 |
| 认知学徒制 | Collins et al., 1991 | Step 3 → Step 2/4 → 独立应用 |
| 刻意练习 | Ericsson, 1993 | Step 5 每次一个训练指令 |
| 元认知 | Flavell, 1979 | Step 2 镜像反射 |
| 执行意图 | Gollwitzer, 1999 | Step 5 When-Then |
| 提取效应 | Roediger & Karpicke, 2006 | Step 1 强制提取 |
| 自我解释 | Chi et al., 1994 | Step 4 问「为什么」 |
| 交错训练 | Rohrer, 2012 | 每周跨书调用 |

## 安装

### Codex CLI 用户

`ash
# 下载到你的 skills 目录
git clone https://github.com/tkr520521/book-inner-spark.git ~/.codex/skills/book-inner
`

或在 .codex/skills/ 下手动创建 ook-inner/SKILL.md 并复制内容。

## 使用

安装后在对话中直接：

- **描述你的现实困境** → 自动进入 SPARK 五步流程
- **「我要走一遍 SPARK」** → 手动启动
- **「帮我用 SPARK 读《XXX》」** → 摄入一本新书
- **「用《XXX》分析一下我的问题」** → 用特定书走 SPARK

## 文件结构

`
book-inner/
├── SKILL.md                    # 核心指令
├── books/
│   ├── _template.md            # 新书摄入模板
│   ├── thinking-fast-and-slow.md  # 示例：《思考，快与慢》
│   └── spark-cheatsheet.md     # 速查卡
├── logs/                       # 使用日志（自动生成）
└── scripts/
    └── ingest.ps1              # 摄入辅助脚本
`

## License

MIT