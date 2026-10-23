#!/usr/bin/env python3
"""Generate a tiny C header, avoiding a write when its content is unchanged."""

from pathlib import Path
import sys


source, output = map(Path, sys.argv[1:])
version = source.read_text(encoding="utf-8").strip()
content = f'#define PROJECT_VERSION "{version}"\n'

if not output.exists() or output.read_text(encoding="utf-8") != content:
    output.write_text(content, encoding="utf-8")
