# toolkit-smith

名前が`-toolkit`で終わるスキル（toolkit）を作り，直し，拡張する．toolkitは，対象ごとにスクリプトとレシピをまとめ，次回以降の作業で消費するコンテキストを減らし，速度と正確性を上げる．

## インストール（Claude Code）

```
/plugin marketplace add myaccount-hash/myaccount-hash-skills
/plugin install toolkit-smith@myaccount-hash-skills
```

## インストール（claude.ai）

リポジトリのルートで`scripts/build-skill.sh toolkit-smith`を実行して`dist/toolkit-smith.skill`を作り，Customize > Skillsからアップロードする．

## 使い方

- 「`<対象>-toolkit`を作って」と頼む．置き場所を聞かれ，追加するツールを確かめてから作られる．
- toolkitが不整合を報告したり拡張を提案したりしたら，続けて「修正して」と頼む．
