@echo off

set APPDIR=%~dp0
cd %APPDIR%
%APPDIR%\bin\app.exe grab -f %APPDIR%\config -o %APPDIR% -l 0

cp report.html ..\harrygg.github.io\EPG\report.html
cp report.js ..\harrygg.github.io\EPG\report.js

git pull
git status
git add -A
git commit -m "Scheduled daily update"
git push
git status

cd %APPDIR%..\harrygg.github.io

git pull
git status
git add -A
git commit -m "Scheduled daily update"
git push
git status