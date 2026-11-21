#!/usr/bin/env bash
# スキルのディレクトリをzipで圧縮し，dist/<スキル名>.skill を作成する．
# アーカイブのルートにはスキル名のディレクトリを置く（<スキル名>/SKILL.md）．
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
skill_name="deciding"
skills_dir="$repo_root/plugins/$skill_name/skills"
dist_dir="$repo_root/dist"
output="$dist_dir/$skill_name.skill"

if [[ ! -f "$skills_dir/$skill_name/SKILL.md" ]]; then
    echo "SKILL.md が見つからない: $skills_dir/$skill_name/SKILL.md" >&2
    exit 1
fi

mkdir -p "$dist_dir"
rm -f "$output"

(cd "$skills_dir" && zip -rqX "$output" "$skill_name" -x '*.DS_Store')

echo "作成: $output"
unzip -l "$output"
