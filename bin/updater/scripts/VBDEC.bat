@ECHO OFF
echo Update VBDEC
cd "updates/VBDEC_Setup"

:: unpack
echo.
"../../bin/innounp.exe" -x "VBDEC_Setup.exe"

:: clean
echo.
echo Clean files...
xcopy {app}\*.* /E /I /H
xcopy {sys}\*.* /E /I /H
del "VBDEC_Setup.exe"
rmdir /S /Q {app}
move {sys} sys

:: copy register script
echo.
echo Remember to run the "VBDEC-register.bat" script before starting the program for the first time!
cp "../../bin/VBDEC-register.bat" VBDEC-register.bat
cp "../../bin/tregsvr.exe" tregsvr.exe

