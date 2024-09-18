@echo off
setlocal enabledelayedexpansion

:: Set the folder path (change this to your project folder path)
set "folderPath=C:\path\to\your\project\folder"

:: Set the output file path
set "outputFile=C:\path\to\your\output\folder_structure.txt"
set "tempFile=%TEMP%\folder_structure_temp.txt"

:: Navigate to the folder
cd /d "%folderPath%"

:: List folder structure and files, including subdirectories, and save to a temporary file
echo Folder and file structure of %folderPath% > "%tempFile%"
echo. >> "%tempFile%"
tree /f /a >> "%tempFile%"

:: Filter out 'node_modules' and write to the final output file
findstr /v /i "node_modules" "%tempFile%" > "%outputFile%"

:: Clean up
del "%tempFile%"

echo Folder structure has been saved to %outputFile%
