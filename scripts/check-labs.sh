#!/bin/sh
set -eu

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

if ! command -v ninja >/dev/null 2>&1; then
  echo "error: ninja is not installed" >&2
  exit 1
fi

for lab in "$repo_dir"/labs/[0-9][0-9]-*; do
  echo "==> ${lab##*/}"
  ninja -C "$lab"
  second_run=$(ninja -C "$lab")
  printf '%s\n' "$second_run"
  case "$second_run" in
    *"no work to do"*) ;;
    *)
      echo "error: second build was not clean: ${lab##*/}" >&2
      exit 1
      ;;
  esac
done

"$repo_dir/labs/02-incremental-c/build/hello" >/dev/null
"$repo_dir/labs/03-generated-files/build/version" >/dev/null
"$repo_dir/labs/04-static-library/build/app" >/dev/null
"$repo_dir/labs/05-subninja/build/app" >/dev/null

echo "all labs passed"
