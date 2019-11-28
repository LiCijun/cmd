@echo off
:input
set /p filename=Vmware停止服务输入q,其他启动服务:
if /i "%filename%"=="q" goto :stop
goto :start

:start
net start vmware-converter-agent
net start vmware-converter-server
net start vmware-converter-worker
net start VMnetDHCP
net start "VMware NAT Service"

net start VMAuthdService
net start VMUSBArbService
net start VMwareHostd
goto :end

:stop 
net stop vmware-converter-agent
net stop vmware-converter-server
net stop vmware-converter-worker
net stop VMnetDHCP
net stop "VMware NAT Service"

net stop VMwareHostd
net stop VMAuthdService
net stop VMUSBArbService




goto :end
:end
pause