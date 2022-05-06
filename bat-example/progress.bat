@echo off
:1
echo something ...
set /a a=%a%+1
set /a nr=%nr%+1
set /a B=(%nr%+1)/5
echo ~~~~~~~~~~~~~~~ %B% %%
echo =======================
if %a% LSS 3 echo.
if %a%==3 echo #
if %a%==4 echo ##
if %a%==5 echo ###
if %a%==6 echo  ###
if %a%==7 echo   ###
if %a%==8 echo    ###
if %a%==9 echo     ###
if %a%==10 echo      ###
if %a%==11 echo       ###
if %a%==12 echo        ###
if %a%==13 echo         ###
if %a%==14 echo          ###
if %a%==15 echo           ###
if %a%==16 echo            ###
if %a%==17 echo             ###
if %a%==18 echo              ###
if %a%==19 echo               ###
if %a%==20 echo                ###
if %a%==21 echo                 ###
if %a%==22 echo                  ###
if %a%==23 echo                   ###
if %a%==24 echo                    ###
if %a%==25 echo                     ##
if %a%==26 echo                      #
echo =======================
if %a% GTR 26 set /a a=0
ping localhost -n 1 >nul
ping localhost -n 1 >nul
if %b%==100 goto final
if %b% GTR 100 goto final
cls
goto 1
 
:final
echo.
echo.
echo ^>\fouten opgelost.
echo.
echo.
echo.
echo.
echo.
echo        Press a button to  close
pause>nul