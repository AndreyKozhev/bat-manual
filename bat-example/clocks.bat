@echo off
@title Clocks
@mode con: cols=30 lines=5
color 1a
:path
echo  Time %time:~0,-3%
rem Пингуем, для задержки в программе
ping 127.0.0.1 -n 2 >nul
cls
goto:path