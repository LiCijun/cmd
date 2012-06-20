@echo off
:start
set /p filename=请输入导出或导入文件名,不需要输入后缀:
if /i "%filename%"=="" goto :start

set /p uid=数据库连接方式 用户名/密码@实例名 默认为fss/fss@lidb:
if /i "%uid%"==""   set uid=fss/fss@lidb 
:start1
set /p choice=导出数据请输入e，导入数据输入i:
if /i "%choice%"=="e" goto:exp
if /i "%choice%"=="i" goto:imp
goto :start1

:exp
echo 你选择了导出数据
exp %uid% file=%filename%.dmp  full=y
echo 导出数据完毕
pause
exit

:imp
echo 你选择了导入数据 
imp %uid% file=%filename%.dmp full=y ignore=y
echo 导入数据完毕
pause
exit 


  rem 

  rem 给用户增加导入数据权限的操作
  rem 第一,启动sql*puls
  rem 第二，以system/manager登陆
   rem第三，create user 用户名 IDENTIFIED BY 密码 （如果已经创建过用户，这步可以省略）
   rem第四，GRANT CREATE USER,DROP USER,ALTER USER ,CREATE ANY VIEW ,
   rem  DROP ANY VIEW,EXP_FULL_DATABASE,IMP_FULL_DATABASE,
    rem    DBA,CONNECT,RESOURCE,CREATE SESSION  TO 用户名字
   rem第五, 运行-cmd-进入dmp文件所在的目录,