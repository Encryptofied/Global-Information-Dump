@echo off
color 07
echo.
set /p a="Enter EXE Name: "
if [%a%]==[] ( 
    CALL:error
    pause
    EXIT /B
) 
if [%a%] NEQ [] (
    CALL:main
    EXIT /B 1 
)
ECHO is on
:main
echo.
echo Chosen Name: %a%
pyinstaller --clean --onefile --noconsole -i NONE -n %a% main.py
rmdir /s /q __pycache__
rmdir /s /q build
del /f / s /q %a%.spec
echo.
echo Generated EXE As: %a%.exe
EXIT /B 1 
ECHO is on
:error
echo.
echo Please, enter a name.
EXIT /B 1
