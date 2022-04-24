@echo off
chcp 1251
::Присваивание переменной значения
set a=Hello world
::Создание файла с текстом переменной
echo %a%>"C:\test.txt"