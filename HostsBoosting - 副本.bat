@echo off


ver | find "5." >nul
if errorlevel 1 echo& echo ��ȷ�����Ѿ��Թ���Ա�������

if exist %windir%\system32\drivers\etc\hosts (
    takeown /a /f %windir%\system32\drivers\etc\hosts
    ICACLS %windir%\system32\drivers\etc\hosts /Grant Administrators:F
    )

cls
pause

if exist %windir%\System32\drivers\etc\hosts.backup1 del %windir%\System32\drivers\etc\hosts.backup1 /q
if exist %windir%\System32\drivers\etc\hosts.backup ren %windir%\System32\drivers\etc\hosts.backup hosts.backup1
if exist %windir%\System32\drivers\etc\hosts ren %windir%\System32\drivers\etc\hosts hosts.backup
ren %windir%\System32\drivers\etc\hostsdsw248 hosts


cls
echo �����У������ĵȴ�����


echo Basic
echo #Basic >>%windir%\System32\drivers\etc\hosts
echo 127.0.0.1 localhost.localdomain localhost >>%windir%\System32\drivers\etc\hosts
echo ::1 localhost >>%windir%\System32\drivers\etc\hosts
echo 127.0.0.1 ubuntu >>%windir%\System32\drivers\etc\hosts
echo 255.255.255.255 broadcasthost >>%windir%\System32\drivers\etc\hosts
echo 127.0.0.1 advertising.apple.com >>%windir%\System32\drivers\etc\hosts
echo 127.0.0.1 ubuntu >>%windir%\System32\drivers\etc\hosts
echo.  >>%windir%\System32\drivers\etc\hosts




echo Google
:Google
echo #Google >>%windir%\System32\drivers\etc\hosts


echo 1ʹ������IP(����)
echo 2�Զ�����IP(�Ƽ�)
echo 3��������hosts(����)
set /p choice= ��ѡ���ѳɹ���ȡ��IP���:

if "%choice%"=="1" goto DefaultIP
if "%choice%"=="2" goto AutoIP
if "%choice%"=="3" goto DownloadIP

:DefaultIP

ipconfig /flushdns
pause 

cls
pause