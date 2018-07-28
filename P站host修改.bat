@echo off
mode con lines=30 cols=60
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
:main
cls
color 2f
echo.----------------------------------------------------------- 
echo.警告：你必须使用右键以管理员权限运行此程序！
echo. 1.HOST注入（输入1）
echo.
echo. 2.HOST注销（输入2）
echo.-----------------------------------------------------------

if exist "%SystemRoot%\System32\choice.exe" goto Win7Choice

set /p choice=请输入数字并按回车键确认:

echo.
if %choice%==1 goto host DNS
if %choice%==2 goto CL
cls
"set choice="
echo 错误，OK？
ping 127.0.1 -n "2">nul
goto main

:Win7Choice
choice /c 12 /n /m "还不快快输入你需要的功能并按下神奇的回车键！！！"
if errorlevel 2 goto CL
if errorlevel 1 goto host DNS
cls
goto main

:host DNS
cls
color 2f
@echo 127.0.0.1         localhost >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45    pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45    www.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45    accounts.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45    touch.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.47    www.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.47    accounts.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.47    touch.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.46    www.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.46    accounts.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.46    touch.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.147   source.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.147   source.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.147    source.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.147    source.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.147    imgaz.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.46    app-api.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.46    app-api.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.48    oauth.secure.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45    dic.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.153    comic.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.47    factory.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 74.120.148.207    g-client-proxy.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.170.179    sketch.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.47    payment.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45    sensei.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.144    novel.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.46    en-dic.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.145    i1.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.145    i2.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.145    i3.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.145    i4.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.159    d.pixiv.org >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.92.135    pixiv.pximg.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.92.136    i.pximg.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.44    comic-api.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
ipconfig /flushdns
echo.-----------------------------------------------------------
echo.
start iexplore "https://www.pixiv.net"
echo.     
goto end

:end
echo 请按任意键退出
@Pause>nul
