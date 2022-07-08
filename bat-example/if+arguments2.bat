@echo off
rem Проверяем, задан ли параметр
if not exist %1.hpj (
   rem Если параметр пуст, выдаем сообщение об ошибке
   echo Такого проекта хелп-файла не существует.
)else (
   rem Ниже расположены команды компиляции
   rem Путь к компилятору хелп-файлов
   set help_compiler="c:\Program Files\HTML Help Workshop\hhc.exe"
   rem Путь к каталогу, в котором находятся проекты хелп-файлов
   set project_path=e:\work\projects\help-projects
   rem Вызываем компилятор для обработки конкретного проекта,
   rem имя которого передаем в первом параметре
   %help_compiler% %project_path%\%1.hpj
)
