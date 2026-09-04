@echo off
cd /d "%~dp0"
echo 魔女chichi Brand OS Version 4
echo.
echo ブラウザで http://localhost:8000 を開いてください。
echo 終了するときはこの画面で Ctrl+C
echo.
python -m http.server 8000
pause
