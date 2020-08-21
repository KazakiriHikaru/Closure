@echo off
title DeleteLoginWallpaperHistoryReg [Project.Rossweisse] by Kazakiri Hikaru / 2020.08.20
echo.
echo 本bat用于提供 删除Windows 10锁屏（锁屏界面）设定记录的方式 和 删除Windows 10壁纸（背景）使用记录。
echo.
echo 删除Windows锁屏界面记录需要对 %PROGRAMDATA%\Microsoft\Windows\SystemData 添加当前账户的完全权限，删除名字最长的文件夹里面的所有内容
echo.
echo 然后删除 HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SystemProtectedUserData\S-1-5-21-1309462105-2205260417-3050818954-500\AnyoneRead\LockScreen 下的所有内容
echo.
echo 注意SYSTEM权限归属问题，操作后可能导致无法设定锁屏界面。
echo.
echo 以下 删除Windows 10壁纸（背景）使用记录 操作涉及注册表操作，慎重确认！使用后可能需要重新设定壁纸。
echo.
pause
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers /v BackgroundHistoryPath0 /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers /v BackgroundHistoryPath1 /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers /v BackgroundHistoryPath2 /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers /v BackgroundHistoryPath3 /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers /v BackgroundHistoryPath4 /f
echo 删除壁纸使用记录完毕，如有问题，请重新设定壁纸。