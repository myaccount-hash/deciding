---
tags: [presenting-decisions]
max_turns: 20
timeout_seconds: 600
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit, Bash]
---

判断事項を提示．

（前のラウンドでAIが次のように提示した）

## D1: 実装言語を何にするか
- 推奨: Go
- 理由: 単一バイナリで配布でき，起動が速い．
- 代替: Python／Rust

## D2: 設定ファイルの形式を何にするか
- 推奨: YAML
- 理由: コメントが書け，広く使われている．
- 代替: TOML／JSON

## D3: データをどこに保存するか
- 推奨: ホームディレクトリのJSONファイル
- 理由: 依存がなく，手で読める．
- 代替: SQLite

（ユーザーの返答）
D1 OK
D2 TOMLにする
D3 SQLiteにしない理由をもう少し詳しく
