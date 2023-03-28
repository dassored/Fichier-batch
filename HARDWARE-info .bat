@echo off

rem  Nom du fichier de rapport
set FILENAME = system_report.txt

rem supprime le fichier de repport s'il existe déja
if exist %FILENAME% del %FILENAME%

rem Collecte les informations système et les écrit dans le fichier de rapport
systemeinfo >> %FILENAME%
ipconfig /all >> %FILENAME%
driverquery /v >> %FILENAME%
tasklist /v >> %FILENAME%
netstat -ano >> %FILENAME%

rem Ouvre le fichier de rapport dans le Bloc-notes
start notepad %FILENAME%
