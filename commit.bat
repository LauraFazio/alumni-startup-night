@echo off
setlocal
cd /d "%~dp0"
REM ---- Alumni Startup Night: commit + push su GitHub (LauraFazio) ----
where git >nul 2>nul || (echo Git non trovato. Installa Git for Windows. & pause & exit /b 1)

if not exist ".git" (
  git init -b main
  git config user.name "Laura Fazio"
  git config user.email "laura@mlcpresentations.com"
  git config core.autocrlf true
)

git add -A
set MSG=%*
if "%MSG%"=="" set MSG=Aggiornamento sito Startup Night
git commit -m "%MSG%"

git remote get-url origin >nul 2>nul
if errorlevel 1 (
  where gh >nul 2>nul
  if errorlevel 1 (
    echo.
    echo Crea il repo vuoto su https://github.com/new con nome: alumni-startup-night
    echo poi premi un tasto per collegarlo e fare il push.
    pause
    git remote add origin https://github.com/LauraFazio/alumni-startup-night.git
  ) else (
    gh repo create LauraFazio/alumni-startup-night --public --source=. --remote=origin
  )
)

git push -u origin main
echo.
echo Fatto. Se il progetto Vercel e' gia' collegato, il deploy parte da solo.
pause
