@echo off

echo --Parameters: %*
echo --Param 1: %1
echo --Param 2: %2
echo --Param 3: %3
set /A first = %1
set /A second = %2
set /A third = %3
set /A addition = first + second
set /A composition = first * second
set /A division = third / second
set /A subtraction = second - third
set /A subtraction1 = second - third
set /A subtraction2 = first - second
set /A composition2 = subtraction1 * subtraction2
echo %first% + %second% = %addition%
echo %first% * %second% = %composition%
echo %third% / %second% = %division%
echo %second% - %third% = %subtraction%
echo (%second% - %third%) * (%first% - %second%) = %composition2%
pause