@echo off

echo --Parameters: %*
echo --Mode: %1
echo --Filename: %2

if "%1" equ "" (
    echo ---+ %~n0 file mode
    echo ---++ Mode = {create, delete}
    echo ---++ File = filename
) else (
    if "%1" equ "delete" (
        if "%2" equ "" (
            echo ---+ Filename not specified
        ) else (
            if not exist "%2" (
                echo ---+ File %2 not found
            ) else (
                del "%2"
                echo ---+ File %2 deleted
            )
        )
    ) else if "%1" equ "create" (
        if "%2" equ "" (
            echo ---+ Filename not specified
        ) else (
            if exist "%2" (
                echo ---+ File %2 already exists
            ) else (
                copy NUL %2 >NUL
                echo ---+ File %2 created
            )
        )
    ) else (
        echo ---+ Mode is not set correctly
    )
)

pause