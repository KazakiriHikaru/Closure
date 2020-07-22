@echo off
title DHCP2Static4Win10Lite [Project.Suzuran] by Kazakiri Hikaru / @lphaVersion / 2020.07.23
echo.
echo 确定开始将DHCP转为静态IP设定？
echo.
pause
for /f "tokens=16,*" %%i in ('ipconfig ^| find /i "IPv4"') do set IPv4=%%i
for /f "tokens=15,*" %%m in ('ipconfig ^| find /i "掩码"') do set Mask=%%m
for /f "tokens=15,*" %%g in ('ipconfig ^| find /i "网关"') do set Gateway=%%g
echo 正在转换并将网关设定为DNS
netsh interface ip set address "以太网" static %IPv4% %Mask% %Gateway%
netsh interface ip set dns "以太网" static %Gateway% validate=no
echo OK！

@echo off
title DHCP2Static4Win10 [Project.Suzuran] by Kazakiri Hikaru / @lphaVersion / 2020.07.23
for /f "tokens=16,*" %%i in ('ipconfig ^| find /i "IPv4"') do set IPv4=%%i
echo %IPv4%
for /f "tokens=15,*" %%m in ('ipconfig ^| find /i "掩码"') do set Mask=%%m
echo %Mask%
for /f "tokens=15,*" %%g in ('ipconfig ^| find /i "网关"') do set Gateway=%%g
echo %Gateway%
echo 确认？
pause
echo 正在转换并将网关设定为DNS
netsh interface ip set address "以太网" static %IPv4% %Mask% %Gateway%
netsh interface ip set dns "以太网" static %Gateway% validate=no
echo 设定完成！
ipconfig -all
pause
