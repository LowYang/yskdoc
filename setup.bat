@echo off

set "yskpath=%~dp0"
set "yskpath=%yskpath%data
echo %yskpath%
set path=%path%;%yskpath%

tasklist | find /i "winword.exe"
if %errorlevel% == 0 (
	msg %userName% /time:15 请先关闭word
	echo "yes"
 ) else (
	del %appdata%\microsoft\word\startup\空投模板*.dotm > .\data\setup.log
	copy .\data\空投模板V58.DOTM %appdata%\microsoft\word\startup\ >> .\data\setup.log
	msg %userName% /time:5 安装完成
)
