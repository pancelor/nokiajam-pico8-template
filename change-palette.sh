#!/usr/bin/env bash
set -e

JS_PATH='mycoolgame_html/mycoolgame.js'

sed --regexp-extended \
  -e "s/29,43,83,126,37,83,0,135,81,171,82,54,95,87,79,194,195,199,255,241,232,255,0,77,255,163,0,255,236,39,0,228,54,41,173,255,131,118,156,255,119,168,255,204,170/67,82,61,67,82,61,67,82,61,67,82,61,67,82,61,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216,199,240,216/g" \
  --in-place "${JS_PATH}"
