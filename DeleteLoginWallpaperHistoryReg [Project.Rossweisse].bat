@echo off
title DeleteLoginWallpaperHistoryReg [Project.Rossweisse] by Kazakiri Hikaru / 2020.08.20
echo.
echo ��bat�����ṩ ɾ��Windows 10�������������棩�趨��¼�ķ�ʽ �� ɾ��Windows 10��ֽ��������ʹ�ü�¼��
echo.
echo ɾ��Windows���������¼��Ҫ�� %PROGRAMDATA%\Microsoft\Windows\SystemData ��ӵ�ǰ�˻�����ȫȨ�ޣ�ɾ����������ļ����������������
echo.
echo Ȼ��ɾ�� HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SystemProtectedUserData\S-1-5-21-1309462105-2205260417-3050818954-500\AnyoneRead\LockScreen �µ���������
echo.
echo ע��SYSTEMȨ�޹������⣬��������ܵ����޷��趨�������档
echo.
echo ���� ɾ��Windows 10��ֽ��������ʹ�ü�¼ �����漰ע������������ȷ�ϣ�ʹ�ú������Ҫ�����趨��ֽ��
echo.
pause
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers /v BackgroundHistoryPath0 /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers /v BackgroundHistoryPath1 /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers /v BackgroundHistoryPath2 /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers /v BackgroundHistoryPath3 /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers /v BackgroundHistoryPath4 /f
echo ɾ����ֽʹ�ü�¼��ϣ��������⣬�������趨��ֽ��