@REM @echo off
setlocal enableextensions 

set location="%USERPROFILE%\AppData\Local\Vivaldi\Application\vivaldi.exe"
@REM for /F "delims=" %%i in () do set test=%%i
powershell -noprofile "(Get-Item -path %USERPROFILE%\AppData\Local\Vivaldi\Application\vivaldi.exe).VersionInfo.ProductVersion" > temp.txt
set /p version=<temp.txt
del temp.txt
set source="%cd%\Contents\"
@REM set test="%cd%\test\"
set destination="%USERPROFILE%\AppData\Local\Vivaldi\Application\%version%\resources\vivaldi\user_files\"

xcopy /s/e %source% %destination%
echo %version%
echo %destination%
:End
@REM cmd /k