@echo off
chcp 1251
if [%1]==[] (
    @echo Укажите параметр!
    exit /b
)


call :factorial %1
echo %RESULT%
exit /b

rem Функция для подсчета значения факториала
rem Вход:
rem       %1        Число, для которого необходимо подсчитать факториал
rem Выход:
rem       %RESULT%  Значение факториала
:factorial

if %1 == 0 (
    set RESULT=1
    exit /b
)
if %1 == 1 (
    set RESULT=1
    exit /b
)



set /a PARAM=%1 - 1
call :factorial %PARAM%
set /a RESULT=%1 * %RESULT%
chcp 866
exit /b