@echo off
REM Build CV/Resume with Docker (CMD / PowerShell)
REM Usage: build.bat

cd /d "%~dp0"
docker run --rm -v "%CD%:/work" -w /work csmith/awesome-cv-builder
pause
