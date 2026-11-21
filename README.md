# presenting-decisions

あなたが本当に欲しいものを，AIとの議論で判断として確定させ，DECISIONS.mdに残すスキル．
AIが判断事項を推奨・理由・代替の付いたカードにして出し，あなたは各カードに`OK`・`SKIP`・コメントで返す．
まとまっていない考えを投げれば，AIがカードに整えて「こういうことか」と返す．AIは反論もする．
DECISIONS.mdがあれば，あとからでも判断を満たす成果物を組み立てられる．
このリポジトリのDECISIONS.mdは，スキル自身の設計判断の記録．

## インストール（Claude Code）

```
/plugin marketplace add myaccount-hash/presenting-decisions
/plugin install presenting-decisions@presenting-decisions
```

## インストール（claude.ai）

`plugins/presenting-decisions/skills/presenting-decisions`フォルダをZIPにし，Customize > Skillsからアップロードする．

## 使い方

次の語を，それだけで書くと指示になる．「判断事項を提示して」「記録して」のような文でもよい．

- `DEAL`: 判断事項をカードとして出す．
- `SAVE`: `OK`になった判断をDECISIONS.mdに記録する．
- `COMPACT`: DECISIONS.mdを圧縮する．
- `RUN`: `OK`になった判断に従って成果物を作る．

カードには`#1`，`#2`のような番号が付く．返答は番号を添えて書く．

```
#1 OK
#2 SKIP
#3 〜のほうがよいのでは
```

`OK`にしなかったカードは記録されず，AIの判断に任される．
