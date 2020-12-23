@echo off
call :http >temp.log
exit /b

:http
Find "http" SKATER.P
Start Filter.exe