@echo off

set "yskpath=%~dp0"
set "yskpath=%yskpath%data
echo %yskpath%
set path=%path%;%yskpath%

tasklist | find /i "winword.exe"
if %errorlevel% == 0 (
	msg %userName% /time:15 ���ȹر�word
	echo "yes"
 ) else (
	del %appdata%\microsoft\word\startup\��Ͷģ��*.dotm > .\data\setup.log
	msg %userName% /time:5 ж�����
)

