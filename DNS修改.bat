::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJE6L5kkMrd6zycFluotwgFXW1MH44OSgsEIIRLNoIcHS2bvu
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
:A:ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCmDJE6L5kkMrd6zycFluotwgFXW1Or6+9ajjH6ZjAK2jEFdIWsIzSJd713hFQ==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983




@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"

:start
@echo off
cls
color 3f
title ASYS-DNS一键切换
@echo.
@echo 请输入您当前上网的连接名称，或输入exit来退出
echo 常见名称参考：
echo 使用WiFi上网：WLAN
echo 使用有线网络上网：以太网 或 本地连接
echo 如果您不知道名称，请在“控制面板\网络和 Internet\网络连接”中查看
set /p con=
if "%con%"=="exit" goto exit
goto begin

:exit
pause
exit

:begin
@Echo Off
mode con cols=90 lines=30
color 3F
title ASYS-DNS一键切换
cls
@Echo.
@echo. 
@echo ===================================================================
@Echo        欢迎使用ASYS计算机与操作系统-DNS一键切换
@Echo              本工具将帮助您快速切换指定设备对应的DNS服务器
@echo ===================================================================
@echo. ASYS-DNS一键切换  版本1.1.5 (C)2020-2022 ASYS团队
@echo. --------------当前版本为测试版----------------
@echo. 
@echo. =============注意！此工具需要管理员权限下运行！=============
@echo. 
@echo 当前连接名称："%con%" 
@echo. 
@echo.   请选择一项任务：
@echo. 
echo        [1]切换到默认设置
echo        [2]切换到谷歌DNS
echo        [3]切换到微软DNS
echo        [4]切换到114DNS
echo        [5]切换到阿里云DNS
echo        [6]切换到百度公共DNS
echo        [7]切换到IBM DNS
echo        [8]切换到Open DNS
echo        [a]刷新DNS缓存
echo        [e]更换连接
echo        [0]退出本程序
echo  请输入任务前面的数字，不需要加上方括号
set /p p=

if "%p%"=="1" goto defalut
if "%p%"=="2" goto google
if "%p%"=="3" goto ms
if "%p%"=="4" goto 114
if "%p%"=="5" goto ali
if "%p%"=="6" goto baidu
if "%p%"=="7" goto ibm
if "%p%"=="8" goto open
if "%p%"=="0" goto exit
if "%p%"=="e" goto start
if "%p%"=="a" goto flushdns
echo 输入错误！请重新输入
pause
goto begin

::DNS列表

:flushdns
cls
ipconfig /flushdns
echo 操作完成
pause
goto begin

:defalut
cls
echo 即将将DNS设置还原为默认
pause
netsh interface ipv4 set dns "%con%" dhcp
echo 操作完成！
pause
goto begin

:google
cls
netsh interface ip set dns "%con%" static 8.8.8.8
netsh interface ip add dns "%con%" 8.8.4.4
echo 操作完成！
pause
goto begin

:ms
cls
netsh interface ip set dns "%con%" static 4.2.2.2
netsh interface ip add dns "%con%" 4.2.2.1
echo 操作完成！
pause
goto begin

:114
cls
netsh interface ip set dns "%con%" static 114.114.114.114
netsh interface ip add dns "%con%" 114.114.115.115
echo 操作完成！
pause
goto begin

:ali
cls
netsh interface ip set dns "%con%" static 223.5.5.5
netsh interface ip add dns "%con%" 223.6.6.6
echo 操作完成！
pause
goto begin

:baidu
cls
netsh interface ip set dns "%con%" static 180.76.76.76
netsh interface ip add dns "%con%" 8.8.8.8
echo 操作完成！
pause
goto begin

:ibm
cls
netsh interface ip set dns "%con%" static 9.9.9.9
netsh interface ip add dns "%con%" 8.8.4.4
echo 操作完成！
pause
goto begin
