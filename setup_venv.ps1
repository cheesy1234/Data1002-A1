# Requires: Windows PowerShell
$ErrorActionPreference = "Stop"

# Choose python.exe
$python = "python"
try {
  & $python --version | Out-Null
} catch {
  Write-Error "Python not found. Install Python 3.11 first."
  exit 1
}

# Create venv
$venv = ".venv"
& $python -m venv $venv

# Activate and install deps
$activate = ".\.venv\Scripts\Activate.ps1"
. $activate
python -m pip install --upgrade pip
pip install -r requirements.txt

Write-Host ""
Write-Host "✅ Virtual env ready."
Write-Host "Activate with: .\.venv\Scripts\Activate.ps1"
Write-Host "Launch Jupyter with: jupyter notebook"
