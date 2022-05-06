@echo off
SetLocal EnableExtensions EnableDelayedExpansion
 
:: Символ для полоски прогрессбара
set "prLineChar=#"
:: Символ для фона прогрессбара
set "prBackChar=."
:: Кол-во одновременно выводимых символов
set prSameChars=4
:: Ширина прогрессбара
set prWidth=25
 
:: Частота обновления (через каждые N %.)
set prFreq=3
 
set /a prPosMax=prWidth - prSameChars
 
For /L %%C in (1,1,%prSameChars%) do set PrLine=!PrLine!%prLineChar%
For /L %%C in (0,1,%prPosMax%) do (
  set /a prPosB_Cnt=%%C
  set /a prPosE_Cnt=%%C+prSameChars+1
  For /L %%D in (1,1,!prPosB_Cnt!) do set "prLine.%%C=!prLine.%%C!%prBackChar%"
  set prLine.%%C=!prLine.%%C!%PrLine%
  For /L %%D in (!prPosE_Cnt!,1,%prWidth%) do set "prLine.%%C=!prLine.%%C!%prBackChar%"
)
:progress
set /a prStatus+=1
set prLineOld=%prLineCur%
set /a "prLineCur=(%prStatus% / %prFreq% +1) %% (%prPosMax% +1)"
if "%prLineOld%" neq "%prLineCur%" (
  cls
  echo Connecting ...
  echo                   %prStatus% %%
  echo.
  echo.!prLine.%prLineCur%!
  echo.
)
ping localhost -n 1 >nul
ping localhost -n 1 >nul
 
if %prStatus% neq 100 goto progress
pause>nul