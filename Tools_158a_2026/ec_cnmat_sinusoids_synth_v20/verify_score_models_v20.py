#!/usr/bin/env python3
"""Compatibility entry point: invokes the current complete diagnostic runner."""
from pathlib import Path
import subprocess, sys
if __name__ == "__main__":
    raise SystemExit(subprocess.run([sys.executable, str(Path(__file__).with_name("run_diagnostics_v20.py")), *sys.argv[1:]]).returncode)
