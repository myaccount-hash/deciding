#!/usr/bin/env bash
# スキルのディレクトリをzipで圧縮し，dist/<スキル名>.skill を作成する．
# アーカイブのルートにはスキル名のディレクトリを置く（<スキル名>/SKILL.md）．
# 使い方: scripts/build-skill.sh [スキル名...]（省略すると plugins/ 配下の全スキル）
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
dist_dir="$repo_root/dist"

if [[ $# -gt 0 ]]; then
    skill_names=("$@")
else
    skill_names=()
    for dir in "$repo_root"/plugins/*/; do
        skill_names+=("$(basename "$dir")")
    done
fi

mkdir -p "$dist_dir"

for skill_name in "${skill_names[@]}"; do
    skills_dir="$repo_root/plugins/$skill_name/skills"
    output="$dist_dir/$skill_name.skill"

    if [[ ! -f "$skills_dir/$skill_name/SKILL.md" ]]; then
        echo "SKILL.md が見つからない: $skills_dir/$skill_name/SKILL.md" >&2
        exit 1
    fi

    rm -f "$output"
    (cd "$skills_dir" && zip -rqX "$output" "$skill_name" -x '*.DS_Store')

    echo "作成: $output"
    unzip -l "$output"
done
