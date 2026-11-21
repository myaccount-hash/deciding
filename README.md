# deciding

あなたが本当に実現したいことを，AIとの議論で判断として確定させ，判断リストに残すスキル．
AIが質問を推奨・理由・代替の付いたカードにして出し，あなたは各カードに`OK`・`SKIP`・コメントで返す．
まとまっていない考えを投げれば，AIがカードに整えて「こういうことか」と返す．AIは反論もする．
判断リストがあれば，あとからでも，その判断を満たす成果物をAIに作らせられる．
このリポジトリの`deciding.decisions.md`は，スキル自身の設計判断を記録した判断リスト．

## インストール（Claude Code）

```
/plugin marketplace add myaccount-hash/deciding
/plugin install deciding@deciding
```

## インストール（claude.ai）

`plugins/deciding/skills/deciding`フォルダをZIPにし，Customize > Skillsからアップロードする．
`scripts/build-skill.sh`を実行すると，`dist/deciding.skill`として作れる．

## 使い方

次の語を，それだけで書くと指示になる．「カードを出して」「記録して」のような文でもよい．

- `DEAL`: カードを出す．
- `SAVE`: `OK`になった判断を判断リストに記録する．
- `RUN`: `OK`になった判断に従って成果物を作る．判断リストのファイルを添えると，その判断にも従う．

カードには`D1`，`D2`のような番号が付く．返答は番号を添えて書く．

```
D1 OK
D2 SKIP
D3 〜のほうがよいのでは
```

`OK`にしなかったカードは記録されず，AIの判断に任される．

## 判断リスト

`OK`になった判断を並べたMarkdownのファイル．ファイル名の末尾は`.decisions.md`にする．
`SAVE`のたびに，そのセッションの判断を新しいファイルに書く．既存の判断リストを直したいときは，その判断リストを成果物とする作業として，ふつうにカードを出して進める．
