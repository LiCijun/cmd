@echo off 
taskkill /t /f /im oracle.exe
taskkill /t /f /im java.exe
taskkill /t /f /im PocketSnapshot3.exe
taskkill /t /f /im installfiles.exe
taskkill /t /f /im reportingservicesservice.exe
rem taskkill /t /f /im sqlservr.exe
taskkill /t /f /im wmiprvse.exe
taskkill /t /f /im SMSvcHost.exe
taskkill /t /f /im *.vshost.exe
taskkill /t /f /im *.*.vshost.exe
taskkill /t /f /im conhost.exe
taskkill /t /f /im 2.exe
rem taskkill /t /f /im cmd.exe
rem taskkill /t /f /im msmpeng.exe
pause