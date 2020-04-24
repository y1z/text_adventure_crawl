@echo off
REM   document the code by doing the following 
REM    get all the .rs file 
REM    then give all those files to rustdoc

echo starting
cd %~dp0

REM used to store the name of all the rust source files.
set storageFilePath=%CD%\temp.txt
cd ..
set sourceFilesPath=%CD%\src
set documentationLocation=%CD%

REM get the names of the files and store then for later.
DIR /B %sourceFilesPath%>%storageFilePath%
cd %sourceFilesPath%

SETLOCAL

REM init the variable with empty space
set rustFileNames= 
for /F "delims=" %%G in (%storageFilePath%) Do set rustFileNames=%rustFileNames% %%G 
REM generate documentation
rustdoc %rustFileNames% --crate-name crawl -o %documentationLocation%\doc

ENDLOCAL

echo generated documentation at %documentationLocation%\doc

cd %~dp0
echo finished