@echo off
rem Задаём заголовок окна
title Calculator
rem Задаём цвета, очищаем экран и печатаем текст с операциями
color E1
cls
echo "Welcome to Calculator"
echo "Andrey Kozhev 2022"
echo "Enter an expression, you can apply:"
echo "()    - grouping"             
echo "! ~   - unary operators"         
echo "* / %% - arithmetic operators"  
echo "+ -   - arithmetic operators"  
echo "<< >> - binary shift"            
echo "&     - binary AND"               
echo "^     - binary XOR"  
echo "|     - binary OR"             
echo "= *= /= %%= += -=  - appropriation"    
echo "&= ^= |= <<= >>="                  
echo ",     - statement separator"    
echo "exit  - exit"     
:next
set /p exp=
if "%exp%"=="exit" goto exit
set /a result="%exp%"
echo %result%
goto next
:exit
color 07
