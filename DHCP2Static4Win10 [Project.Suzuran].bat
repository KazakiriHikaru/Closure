@echo off
title DHCP2Static4Win10 [Project.Suzuran] by Kazakiri Hikaru / @lphaVersion / 2020.07.23
for /f "tokens=16,*" %%i in ('ipconfig ^| find /i "IPv4"') do set IPv4=%%i
echo %IPv4%
for /f "tokens=15,*" %%m in ('ipconfig ^| find /i "����"') do set Mask=%%m
echo %Mask%
for /f "tokens=15,*" %%g in ('ipconfig ^| find /i "����"') do set Gateway=%%g
echo %Gateway%
echo ȷ�ϣ�
pause
echo ����ת�����������趨ΪDNS
netsh interface ip set address "��̫��" static %IPv4% %Mask% %Gateway%
netsh interface ip set dns "��̫��" static %Gateway% validate=no
echo �趨��ɣ�
ipconfig -all
pause