---
tags: [presenting-decisions]
max_turns: 30
timeout_seconds: 900
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit, Bash]
---

判断事項を提示．

（前のラウンドでAIがDECISIONS.mdの記録をもとに全事項確定の一覧を出し，DECISIONS.mdはすべて記録済み）

（ユーザーの返答）
実行．DECISIONS.mdどおりに`slugify.py`を作り，git initしてコミットして．

Input files: DECISIONS.md
