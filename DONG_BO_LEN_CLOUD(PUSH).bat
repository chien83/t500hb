@echo off
title DONG BO LEN MAY (PUSH)
:: Lenh nay tu dong nhan dien o dia va thu muc hien tai
cd /d "%~dp0"

git add .
git commit -m "Cap nhat tu vi tri moi ngay %date%"
git push origin main
pause