#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$(readlink -f "$0")")" && pwd)"

echo "dir: ${SCRIPT_DIR}"

if [ $# -eq 0 ]; then
    "$SCRIPT_DIR"/trans FROM:TO --brief $@ --shell
else
    "$SCRIPT_DIR"/trans FROM:TO --brief $@
fi
