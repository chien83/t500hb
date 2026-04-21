@echo off
title NHAP KHO DU LIEU (PULL)
:: Tu dong nhan dien thu muc du anh dat o o đia nao
cd /d "%~dp0"

echo --------------------------------------------------
echo [1/2] Dang kiem tra va tai du lieu moi tu Cloud ve...
git pull origin main

echo [2/2] Dang dong bo sang kho du phong GitLab...
git push origin main

echo --------------------------------------------------
echo => KET QUA: May tinh nay da co ban moi nhat. 
echo Anh co the bat dau lam viec!
echo --------------------------------------------------
pause