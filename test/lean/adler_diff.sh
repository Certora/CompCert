#!/bin/sh
# Validates the Lean Adler-32 model (ZAdler32.adler32Model) against zlib's own
# adler32, by generating kernel-checked equalities and typechecking them.
#
#   usage: bash test/lean/adler_diff.sh [cases] [seed]
set -e
here=$(cd "$(dirname "$0")" && pwd)
export_dir=$(cd "$here/../.." && pwd)/export
zlib=${ZLIB_DIR:-/Users/ecivini/Projects/Zip/zlib-1.3.2}

echo "[1/3] Building the oracle against $zlib ..."
cc -O1 -I "$zlib" -o "$here/adler_oracle" "$here/adler_oracle.c" "$zlib/adler32.c"

echo "[2/3] Generating ${1:-50} cases ..."
"$here/adler_oracle" "${1:-50}" "${2:-12345}" > "$export_dir/AdlerDiff.lean"

echo "[3/3] Typechecking (every case is a kernel decide) ..."
( cd "$export_dir" && lake build ZAdler32 >/dev/null \
  && LEAN_PATH=.lake/build/lib/lean lean AdlerDiff.lean )
rm -f "$export_dir/AdlerDiff.lean" "$here/adler_oracle"
echo "OK: the Lean model agrees with zlib's adler32 on ${1:-50} random buffers."
