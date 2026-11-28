# deciding

ユーザーは決めるだけ，AIは作るだけ．AIはカードで推奨・理由・代替を出し，ユーザーの`OK`で判断が確定する．

## インストール（Claude Code）

```
/plugin marketplace add myaccount-hash/myaccount-hash-skills
/plugin install deciding@myaccount-hash-skills
```

## インストール（claude.ai）

リポジトリのルートで`scripts/build-skill.sh deciding`を実行して`dist/deciding.skill`を作り，Customize > Skillsからアップロードする．

## 返答の語

カードの番号を添えて返す．

- `OK`: 推奨と理由で確定する．条件や修正を付けるとコメントになる．
- `SKIP`: そのラウンドでは判断しない．
- それ以外: コメントとして扱われ，AIが推奨を作り直す．

```
C1 OK
C2 SKIP
C3 〜のほうがよいのでは
```

## 指示の語

それだけで書くと指示になる．「カードを出して」「記録して」のような文でもよい．

- `DEAL`: カードを起票する．
- `SAVE`: `OK`になった判断を判断リスト（`.decisions.md`）に記録する．
- `SHOW`: `SAVE`と同じ内容を，ファイルに書かずチャットに出す．
- `RUN`: `OK`になった判断に従って成果物を作る．判断リストを添えると，その判断にも従う．作ったあと，AIに任せた選択の一覧が出る．
- `COMPRESS`: 添えた判断リストを見直し，削れる判断や理由をカードにして起票する．
