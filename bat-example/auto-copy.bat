::Отключение вывода echo
@echo off
::Изменение кодировки
chcp 1251
::Копирование файлов из одной папки в другую
xcopy "D:\diplom\*.*" "E:\backup\diplom\*.*"