@echo off
:start
set /p filename=�����뵼�������ļ���,����Ҫ�����׺:
if /i "%filename%"=="" goto :start

set /p uid=���ݿ����ӷ�ʽ �û���/����@ʵ���� Ĭ��Ϊfss/fss@lidb:
if /i "%uid%"==""   set uid=fss/fss@lidb 
:start1
set /p choice=��������������e��������������i:
if /i "%choice%"=="e" goto:exp
if /i "%choice%"=="i" goto:imp
goto :start1

:exp
echo ��ѡ���˵�������
exp %uid% file=%filename%.dmp  full=y
echo �����������
pause
exit

:imp
echo ��ѡ���˵������� 
imp %uid% file=%filename%.dmp full=y ignore=y
echo �����������
pause
exit 


  rem 

  rem ���û����ӵ�������Ȩ�޵Ĳ���
  rem ��һ,����sql*puls
  rem �ڶ�����system/manager��½
   rem������create user �û��� IDENTIFIED BY ���� ������Ѿ��������û����ⲽ����ʡ�ԣ�
   rem���ģ�GRANT CREATE USER,DROP USER,ALTER USER ,CREATE ANY VIEW ,
   rem  DROP ANY VIEW,EXP_FULL_DATABASE,IMP_FULL_DATABASE,
    rem    DBA,CONNECT,RESOURCE,CREATE SESSION  TO �û�����
   rem����, ����-cmd-����dmp�ļ����ڵ�Ŀ¼,