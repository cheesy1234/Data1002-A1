@echo off
setlocal enabledelayedexpansion

where python >nul 2>nul
if errorlevel 1 (
  echo Python not found. Install Python 3.11.
  exit /b 1
)

set VENV=.venv
python -m venv %VENV%
call %VENV%\Scripts\activate.bat
python -m pip install --upgrade pip
pip install -r requirements.txt

echo.
echo ✅ Virtual env ready.
echo Activate with: %VENV%\Scripts\activate.bat
echo Launch Jupyter with: jupyter notebook
