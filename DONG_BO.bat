@echo off
title SIEU DONG BO t500hb - GitHub ^& GitLab
:: Tu dong nhan dien thu muc hien tai
cd /d "%~dp0"

echo ==================================================
echo [1/3] DANG HOA DONG BO (PULL) ...
echo Dang kiem tra va tai code moi tu GitHub ve may...
git pull origin main

echo.
echo [2/3] DANG DONG GOI HANG (COMMIT) ...
echo Dang ghi nhan cac thay doi moi nhat tren may nay...
git add .
:: Neu khong co thay doi gi moi, lenh commit se tu bo qua
git commit -m "Dong bo tong hop ngay %date% luc %time%"

echo.
echo [3/3] DANG XUAT KHO (PUSH) ...
echo Dang day du lieu len ca GitHub va GitLab...
git push origin main

echo ==================================================
echo => DAI CONG CAO THANH!
echo Tat ca du lieu o May tinh - GitHub - GitLab da KHOP 100%%.
echo ==================================================
pause