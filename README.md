# myaccount-hash-skills

自作スキルをまとめたリポジトリ．リポジトリ自体がClaude Codeのプラグインのマーケットプレイスになっている．

## スキル

| スキル | 内容 |
| --- | --- |
| [deciding](plugins/deciding/) | カードを推奨・理由・代替とともに起票し，ユーザーの返答で判断を確定させる． |

## インストール（Claude Code）

```
/plugin marketplace add myaccount-hash/myaccount-hash-skills
/plugin install <スキル名>@myaccount-hash-skills
```

## インストール（claude.ai）

`scripts/build-skill.sh <スキル名>`を実行して`dist/<スキル名>.skill`を作り，Customize > Skillsからアップロードする．スキル名を省くと全スキルを作る．

## スキルを追加する

1. `plugins/<スキル名>/.claude-plugin/plugin.json`と`plugins/<スキル名>/skills/<スキル名>/SKILL.md`を作る．
2. `.claude-plugin/marketplace.json`の`plugins`と，このREADMEの表に追加する．
3. ローカルで試すときは`ln -s "$PWD/plugins/<スキル名>/skills/<スキル名>" ~/.claude/skills/<スキル名>`でリンクを張る．
