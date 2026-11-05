#!/bin/bash
# Rewrites the section of README.md between the upstream markers with the most
# recent pull requests merged into repositories owned by someone else.
# Needs gh with a token (GH_TOKEN in CI, or a logged-in gh locally).
set -euo pipefail

user="${PROFILE_USER:-virzak}"
count="${UPSTREAM_COUNT:-5}"
readme="$(dirname "$0")/../README.md"
query="author:$user type:pr is:merged -user:$user -user:zompinc"

result=$(gh api -X GET search/issues -f q="$query" -f per_page=100)

# Windows builds of jq end lines with CRLF; strip it so the README stays LF.
total=$(echo "$result" | jq '.total_count' | tr -d '\r')
list=$(echo "$result" | jq -r --argjson n "$count" '
  .items | sort_by(.closed_at) | reverse | .[:$n] | .[] |
  "- [\(.repository_url | sub(".*/repos/"; ""))#\(.number)](\(.html_url)): \(.title | gsub("[\\[\\]<>*]"; ""))"' | tr -d '\r')

section=$(printf '%s\n\n%s\n' "$total merged pull requests in projects I don't own. The latest:" "$list")

awk -v section="$section" '
  /<!-- upstream:start -->/ { print; print ""; print section; print ""; skip = 1; next }
  /<!-- upstream:end -->/ { skip = 0 }
  !skip { print }
' "$readme" >"$readme.tmp"
mv "$readme.tmp" "$readme"
