@echo off
wmic ENVIRONMENT create name="JAVA_HOME",username="<system>",VariableValue="D:\Program Files\Java\jdk1.7.0"
wmic ENVIRONMENT create name="JBOSS_HOME",username="<system>",VariableValue="E:\jboss-6.1.0.Final"
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%PATH%;%%JAVA_HOME%%\jre\bin;%%JBOSS_HOME%%\bin"
pause