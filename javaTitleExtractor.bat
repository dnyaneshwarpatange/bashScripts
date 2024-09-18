@echo off
setlocal enabledelayedexpansion

:: Set the folder path (change this to your folder path)
set "folderPath=C:\path\to\your\folder"

:: Set the output file path
set "outputFile=C:\path\to\your\output\file.txt"

:: Navigate to the folder
cd /d "%folderPath%"

:: List all Java files and save to the output file
dir /b *.java > "%outputFile%"

echo Java file names have been saved to %outputFile%
