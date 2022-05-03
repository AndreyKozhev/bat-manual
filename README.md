# Руководство по BAT
## Назначение
BAT файлы (**Batchfiles**) - пакетные файлы в ОС MS-DOS, OS/2, Windows.
В них хранятся команды. Чаще всего пакетные файлы используются для
автоматизации задач.  
**Внимание!**  
*Некоторые команды могут нанести вред системе!*
## Требования
+ Блокнот или другой текстовый редактор
+ Компьютер с Windows
+ Немного свободного времени
## Синтаксис
+ Каждая команда пишется с новой строки
+ Все команды выполняются *последовательно* за исключением тех случаев, когда внутри самого батника присутствует переход к определённой его части
+ По умолчанию при работе с кириллическим текстом на выходе вы можете получить иероглифы, при работе с папками/файлами, имеющими русские имена, вообще может ничего не получиться, это происходит из-за используемых кодировок, поэтому для исключения подобных неприятностей в начале пакетного файла будем указывать кодировку, корректно работающую с кириллицей следующей командой **chcp 1251**
+ Комментарии можно вводить тремя способами:
    * После двух двоеточий(**::**)
    * После **rem**
    * Через команду **goto**:
    ```batch
    goto begin
    --------------------------------------
    Комментарий
    --------------------------------------
    begin
    ```
+ Аргументы пшутся так: сначала команда, потом слэш(**/**), и сам аргумент
+ Для скрытия **echo** вначале файла вводится команда **@echo off**
+ Все директории внутри команд мы будем писать в кавычках
+ Некоторые команды(например, **del**) требуют подтверждения действия.
Для того, чтобы при выполнении не выводилось окно подтверждения,
перед командой надо поставить **|Y|**(например, **|Y|del**)
## Основные команды
* **cd** – переключение на другую директорию. Аргументы: директория
* **pause** – пауза в программе.
* **start** – запуск файла. Аргументы: путь к файлу(с расширением).
* **MD** – создание директории. Аргументы: директория.
* **copy** – копирование файла. Аргументы: первый файл, второй файл.
* **del** – удаление файла или папки. Аргументы: файл или папка.
* **call** – запуск второго .bat файла. Аргументы: путь до батника.
* Запись текста в файл: **echo**, содержимое файла, знак **>**, путь к файлу.
* **title** - изменение заголовка. Аргументы: текст заголовка.
* **exit** - выход из программы
* Переменные: сначала пишется **set**, потом название переменной, потом знак **=**, потом содержимое переменной.
* Получение значения переменной: название переменной пишется между **двумя** знаками процента(**%**)
* **move** - перемещение файла. Аргументы: исходный путь к файлу, конечный путь.
## Ссылки
[Примеры](../main/bat-example "Примеры")  
[Документация](../main/help "Документация")  
https://reservice.pro/faq/windows/121/  
http://kirdenoff.blogspot.com/2013/01/ms-dos-microsoftwindows.html  
https://miradmin.ru/batch-file/  
https://habr.com/ru/sandbox/168937/