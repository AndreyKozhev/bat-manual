<h1 align="center">
   Руководство по BAT
</h1>
<p align="center">
   <img src="https://custom-icon-badges.herokuapp.com/github/stars/AndreyKozhev/bat-manual?logo=star"/>
   <img src="https://custom-icon-badges.herokuapp.com/github/forks/AndreyKozhev/bat-manual?logo=fork&logoColor=white"/>
   <img src="https://custom-icon-badges.herokuapp.com/github/watchers/AndreyKozhev/bat-manual?logo=eye&logoColor=white"/>
   <img src="https://custom-icon-badges.herokuapp.com/github/languages/code-size/AndreyKozhev/bat-manual?logo=file-code&logoColor=white"/>
   <img src="https://custom-icon-badges.herokuapp.com/github/issues-raw/AndreyKozhev/bat-manual?logo=issue"/>
   <img src="https://custom-icon-badges.herokuapp.com/github/last-commit/AndreyKozhev/bat-manual?logo=history&logoColor=white"/>
   <img src="https://custom-icon-badges.herokuapp.com/github/license/AndreyKozhev/bat-manual?logo=law"/>
</p>

## Назначение
BAT файлы (**Batchfiles**) - пакетные файлы в ОС MS-DOS, OS/2, Windows. Чаще всего пакетные файлы используются для
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
+ По умолчанию при работе с кириллическим текстом на выходе вы можете получить иероглифы, при работе с папками/файлами, имеющими русские имена, вообще может ничего не получиться, это происходит из-за используемых кодировок, поэтому для исключения подобных неприятностей в начале пакетного файла будем указывать кодировку, корректно работающую с кириллицей командой `chcp 1251`
+ Комментарии можно вводить тремя способами:
    * После двух двоеточий(**::**)
    * После `rem`:
    ```batch
    rem Комментарий
    ```
    * Через команду `goto`:
    ```batch
    goto begin
    --------------------------------------
    Комментарий
    --------------------------------------
    begin
    ```
+ Аргументы пишутся так: сначала команда, потом слэш (**/**), и сам аргумент
+ Для скрытия **echo** вначале файла вводится команда `@echo off`
+ Все директории внутри команд мы будем писать в кавычках
+ Некоторые команды (например, `del`) требуют подтверждения действия.
Для того, чтобы при выполнении не выводилось окно подтверждения,
перед командой надо поставить **|Y|** (например, `|Y|del`)
## Основные команды
* `cd` – переключение на другую директорию или получение текущей. Аргументы: директория.
* `pause` – пауза в программе.
* `start` – запуск файла. Аргументы: путь к файлу (с расширением).
* `md` – создание директории. Аргументы: директория.
* `copy` – копирование файла. Аргументы: первый файл, второй файл.
* `del` – удаление файла или папки. Аргументы: файл или папка.
* `call` – запуск второго .bat файла. Аргументы: путь до батника.
* Запись текста в файл: `echo`, содержимое файла, знак **>**, путь к файлу.
* `title` - изменение заголовка. Аргументы: текст заголовка.
* `exit` - выход из программы.
* `color` - смена цвета фона и текста. Аргументы: цифра и буква цветов. ([Информация о команде](/help/color.txt)).
* Переменные: сначала пишется `set`, потом название переменной, потом знак **=**, потом содержимое переменной.
* Получение значения переменной: название переменной пишется между **двумя** знаками процента(**%**).
* `move` - перемещение файла. Аргументы: исходный путь к файлу, конечный путь.
## Ссылки
[Примеры](../main/bat-example "Примеры")  
[Документация](../main/help "Документация")  
### Статьи
https://reservice.pro/faq/windows/121/  
http://kirdenoff.blogspot.com/2013/01/ms-dos-microsoftwindows.html  
https://miradmin.ru/batch-file/  
https://habr.com/ru/sandbox/168937/
