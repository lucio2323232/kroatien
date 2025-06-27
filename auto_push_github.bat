@echo off
set "GITHUB_USERNAME=lucio2323232"
set "REPO_NAME=kroatien"
set "TOKEN=ghp_XXXXXXXXXXXXXXXXXXXXXXXXXXXX"
set "EMAIL=sgolikwolf@gmail.com"

git init
git config user.name "%GITHUB_USERNAME%"
git config user.email "%EMAIL%"
git add .
git commit -m "🚀 Auto-Push: Kroatien-Trainer"
git branch -M main
git remote add origin https://%TOKEN%@github.com/%GITHUB_USERNAME%/%REPO_NAME%.git
git push -u origin main

echo ✅ Fertig! Prüfe: https://github.com/%GITHUB_USERNAME%/%REPO_NAME%
pause
