@echo off
:input
set /p filename=Vmwareֹͣ��������q,������������:
if /i "%filename%"=="q" goto :stop
goto :start

:start
net	start	BOCOM_2010USBKey_HDE_mon_Srv
net	start	QQCertificateService
net	start	WDZFDSvr

goto :end

:stop 

net	stop	BOCOM_2010USBKey_HDE_mon_Srv
net	stop	QQCertificateService
net	stop	WDZFDSvr

goto :end
:end
pause