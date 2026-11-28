# myaccount-hash-skills

自作スキルをまとめたリポジトリ．リポジトリ自体がClaude Codeのプラグインのマーケットプレイスになっている．

## スキル

| プラグイン | スキル | 内容 |
| --- | --- | --- |
| [deal](plugins/deal/) | deal | AIが自分の立場からカードを推奨・理由・代替とともに起票し，ユーザーのOKで確定させる． |
| [toolkit-creator](plugins/toolkit-creator/) | toolkit-smith | 名前が`-toolkit`で終わるスキル（対象ごとにスクリプトとレシピをまとめたスキル）を作り，直し，拡張する． |

## インストール（Claude Code）

```
/plugin marketplace add myaccount-hash/myaccount-hash-skills
/plugin install <プラグイン名>@myaccount-hash-skills
```

## インストール（claude.ai）

`scripts/build-skill.sh <スキル名>`を実行して`dist/<スキル名>.skill`を作り，Customize > Skillsからアップロードする．スキル名を省くと全スキルを作る．

## スキルを追加する

1. `plugins/<プラグイン名>/.claude-plugin/plugin.json`と`plugins/<プラグイン名>/skills/<スキル名>/SKILL.md`を作る．プラグイン名はふつうスキル名と同じにする．
2. `.claude-plugin/marketplace.json`の`plugins`と，このREADMEの表に追加する．
3. ローカルで試すときは`ln -s "$PWD/plugins/<プラグイン名>/skills/<スキル名>" ~/.claude/skills/<スキル名>`でリンクを張る．
