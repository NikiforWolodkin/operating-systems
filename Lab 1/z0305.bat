@echo off

echo --Parameters: %1 %2 %3
echo --Param 1: %1
echo --Param 2: %2
echo --Param 3: %3
set /A result = %1 %3 %2
echo %result%
pause