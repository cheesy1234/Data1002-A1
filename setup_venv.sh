#!/usr/bin/env bash
set -euo pipefail

# Use pinned Python version if pyenv present; otherwise rely on system python
PYTHON_BIN="python3"
if command -v pyenv >/dev/null 2>&1; then
  PYTHON_BIN="$(pyenv which python || true)"
fi

echo "Using Python: $PYTHON_BIN"
$PYTHON_BIN --version || true

# Create venv
VENV_DIR=".venv"
$PYTHON_BIN -m venv "$VENV_DIR"

# Activate and install deps
source "$VENV_DIR/bin/activate"
python -m pip install --upgrade pip
pip install -r requirements.txt

echo
echo "✅ Virtual env ready."
echo "Activate with: source .venv/bin/activate"
echo "Launch Jupyter with: jupyter notebook"
