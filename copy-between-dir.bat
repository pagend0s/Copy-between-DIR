@echo off
:PowerShell
@setlocal enableextensions
@cd /d "%~dp0"
PowerShell.exe -noExit -ExecutionPolicy Bypass -Command ./resources/copy.ps1

