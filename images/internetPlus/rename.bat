@echo off&setlocal EnableDelayedExpansion 
set a=1 
for /f "delims=" %%i in ('dir /b *.jpg') do ( 
if not "%%~ni"=="%~n0" ( 
if !a! LSS 100 (ren "%%i" "!a!.jpg") else ren "%%i" "!a!.jpg" 
set/a a+=1 
) 
)