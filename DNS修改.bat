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
title ASYS-DNSһ���л�
@echo.
@echo ����������ǰ�������������ƣ�������exit���˳�
echo �������Ʋο���
echo ʹ��WiFi������WLAN
echo ʹ������������������̫�� �� ��������
echo �������֪�����ƣ����ڡ��������\����� Internet\�������ӡ��в鿴
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
title ASYS-DNSһ���л�
cls
@Echo.
@echo. 
@echo ===================================================================
@Echo        ��ӭʹ��ASYS����������ϵͳ-DNSһ���л�
@Echo              �����߽������������л�ָ���豸��Ӧ��DNS������
@echo ===================================================================
@echo. ASYS-DNSһ���л�  �汾1.1.5 (C)2020-2022 ASYS�Ŷ�
@echo. --------------��ǰ�汾Ϊ���԰�----------------
@echo. 
@echo. =============ע�⣡�˹�����Ҫ����ԱȨ�������У�=============
@echo. 
@echo ��ǰ�������ƣ�"%con%" 
@echo. 
@echo.   ��ѡ��һ������
@echo. 
echo        [1]�л���Ĭ������
echo        [2]�л����ȸ�DNS
echo        [3]�л���΢��DNS
echo        [4]�л���114DNS
echo        [5]�л���������DNS
echo        [6]�л����ٶȹ���DNS
echo        [7]�л���IBM DNS
echo        [8]�л���Open DNS
echo        [a]ˢ��DNS����
echo        [e]��������
echo        [0]�˳�������
echo  ����������ǰ������֣�����Ҫ���Ϸ�����
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
echo �����������������
pause
goto begin

::DNS�б�

:flushdns
cls
ipconfig /flushdns
echo �������
pause
goto begin

:defalut
cls
echo ������DNS���û�ԭΪĬ��
pause
netsh interface ipv4 set dns "%con%" dhcp
echo ������ɣ�
pause
goto begin

:google
cls
netsh interface ip set dns "%con%" static 8.8.8.8
netsh interface ip add dns "%con%" 8.8.4.4
echo ������ɣ�
pause
goto begin

:ms
cls
netsh interface ip set dns "%con%" static 4.2.2.2
netsh interface ip add dns "%con%" 4.2.2.1
echo ������ɣ�
pause
goto begin

:114
cls
netsh interface ip set dns "%con%" static 114.114.114.114
netsh interface ip add dns "%con%" 114.114.115.115
echo ������ɣ�
pause
goto begin

:ali
cls
netsh interface ip set dns "%con%" static 223.5.5.5
netsh interface ip add dns "%con%" 223.6.6.6
echo ������ɣ�
pause
goto begin

:baidu
cls
netsh interface ip set dns "%con%" static 180.76.76.76
netsh interface ip add dns "%con%" 8.8.8.8
echo ������ɣ�
pause
goto begin

:ibm
cls
netsh interface ip set dns "%con%" static 9.9.9.9
netsh interface ip add dns "%con%" 8.8.4.4
echo ������ɣ�
pause
goto begin
