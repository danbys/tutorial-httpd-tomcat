@ECHO OFF

set CurrentDir="%~dp0"
set BaseDir="%CurrentDir:~1,-10%"
echo Uncompressing:
for %%f in (%BaseDir%\downloads\*.zip) do (
  echo %%~nf
  %BaseDir%\bin\unzip.exe -q -n %%f -d %BaseDir%\downloads\%%~nf
)