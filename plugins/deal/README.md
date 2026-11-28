# deal

ユーザーが決め，AIは立場を持って作る．AIはカードを推奨・理由・代替とともに起票し，ユーザーの`OK`で確定する．

## インストール（Claude Code）

```
/plugin marketplace add myaccount-hash/myaccount-hash-skills
/plugin install deal@myaccount-hash-skills
```

## インストール（claude.ai）

リポジトリのルートで`scripts/build-skill.sh deal`を実行して`dist/deal.skill`を作り，Customize > Skillsからアップロードする．

## 返答の語

カードの番号を添えて返す．

- `OK`: 推奨と理由で確定する．
- `SKIP`: そのラウンドでは決めない．
- それ以外: コメントとして扱われる．AIは，立場の前提が変わるときだけ推奨を変える．

```
C1 OK
C2 SKIP
C3 〜のほうがよいのでは
```

## 指示の語

それだけで書くと指示になる．「カードを出して」「記録して」のような文でもよい．

- `DEAL`: カードを起票する．最初のラウンドでは，カードの前にAIの立場の要約が出る．
- `SAVE`: `OK`を`.deal.md`ファイルに記録する．
- `SHOW`: `OK`を，`.deal.md`の書き方でチャットに出す．
- `RUN`: `OK`に従って成果物を作る．`.deal.md`を添えると，その`OK`にも従う．作ったあと，AIが決めた選択の一覧が出る．
- `COMPRESS`: 添えた`.deal.md`を見直し，削れる`OK`や理由をカードにして起票する．
