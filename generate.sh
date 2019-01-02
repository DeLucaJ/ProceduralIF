#!/bin/bash

PY_SCRIPT= "generate.py"
IN_FILES= "*_grammar.txt"
OUT_FILES= "output.txt"

python "$PY_SCRIPT" "$IN_FILES" > "$OUT_FILES"