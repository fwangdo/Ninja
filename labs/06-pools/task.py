#!/usr/bin/env python3
"""Stand in for a scarce or expensive build action."""

from pathlib import Path
import sys
import time


name, output = sys.argv[1:]
time.sleep(0.15)
Path(output).write_text(f"completed {name}\n", encoding="utf-8")
