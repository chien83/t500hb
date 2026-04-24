@echo off
title CUU HO DU LIEU TU GITLAB (BACKUP)
:: Chuyen den thu muc hien tai
cd /d "%~dp0"

echo ==================================================
echo            HE THONG CUU HO DU LIEU
echo ==================================================
echo.

:: Lenh thong bao va bat nguoi dung xac nhan
set /p "ans=Neu ban da lo tay xoa du lieu tren github thi nhan Y de tiep tuc lay lai du lieu tu gitlab ve? (Y/N): "

:: Kiem tra cau tra loi (khong phan biet chu hoa chu thuong)
if /i "%ans%" neq "Y" (
    echo.
    echo [HUY LENH] Anh da chon khong tiep tuc. Khong co du lieu nao bi thay doi.
    echo.
    pause
    exit
)

echo.
echo --------------------------------------------------
echo [1/3] Dang bat dau cuu ho... Keo du lieu tu GitLab ve may...
git pull https://gitlab.com/hchien83/backup.git main

echo.
echo [2/3] Dang chuan bi dong bo lai he thong...
git add .
git commit -m "Phuc hoi du lieu tu GitLab ngay %date%"

echo.
echo [3/3] Dang day du lieu vua cuu duoc len lai GitHub...
git push origin main

echo --------------------------------------------------
echo => PHUC HOI THANH CONG!
echo Du lieu tai May tinh va GitHub hien da giong het GitLab.
echo --------------------------------------------------
pause