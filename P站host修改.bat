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
@echo 210.129.120.41	pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.55	www.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.146	source.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.41	accounts.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.147	imgaz.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.44	app-api.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.48	oauth.secure.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.54	dic.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.145	comic.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.53	factory.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 74.120.148.205	g-client-proxy.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.170.179	sketch.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.52	payment.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.51	sensei.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.144	novel.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.49	ssl.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 66.6.32.22	times.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.50	recruit.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.49	pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 122.208.114.218	p2.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 52.84.203.238	matsuri.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.46	m.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 52.84.203.163	iracon.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 52.69.82.228	inside.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.140.131.147	i1.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 153.120.23.207	help.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.43	goods.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.40	genepixiv.pr.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 52.84.203.136	festa.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.45	en.dic.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 52.219.68.134	dev.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.42	chat.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 122.208.114.218	blog.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.43	embed.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
@echo 210.129.120.44	comic-api.pixiv.net >>%SystemRoot%\System32\drivers\etc\hosts
ipconfig /flushdns
echo.     
goto end

:end
echo 请按任意键退出
@Pause>nul
