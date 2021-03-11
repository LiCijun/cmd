#! /bin/bash
work_path=$(dirname $(dirname $(readlink -f $0)))

cd $work_path
mkdir gitolite-admin-KMT
cd gitolite-admin-KMT
git init
git remote add KMT kmt:gitolite-admin.git
git remote add li  li:li/gitolite-admin-KMT.git
git remote add lcj  lcj:li/gitolite-admin-KMT.git
git remote add dsm  dsm:gitolite-admin-KMT.git
git remote add dsmnfs  dsmnfs:gitolite-admin-KMT.git

cd $work_path
mkdir baselib
cd baselib
git init
git remote add cmd  cmd:lib.git
git remote add lcj  lcj:li/lib.git
git remote add li  li:li/lib.git
git remote add dsm  dsm:lib.git
git remote add dsmnfs  dsmnfs:lib.git

cd $work_path/AndroidLib
mkdir  Android.Convert
cd Android.Convert
git init
git remote add li  li:li/CMDAndroid.Convert
git remote add cmd  cmd:Android.Convert
git remote add lcj  lcj:li/CMDAndroid.Convert
git remote  set-url  li  li:li/CMDAndroid.Convert
git remote  set-url  lcj  lcj:li/CMDAndroid.Convert


cd $work_path/AndroidLib
mkdir  KMTAndroid.Convert
cd KMTAndroid.Convert
git init
git remote add li  li:li/Android.Convert
git remote add lcj  lcj:li/Android.Convert


cd $work_path/AndroidLib
mkdir  Android.Meter
cd Android.Meter
git init
git remote add li  li:li/CMDAndroid.Meter
git remote add cmd  cmd:Android.Meter
git remote add lcj  lcj:li/CMDAndroid.Meter
git remote set-url li  li:li/CMDAndroid.Meter
git remote set-url lcj  lcj:li/CMDAndroid.Meter


cd $work_path/AndroidLib
mkdir  KMTAndroid.Meter
cd KMTAndroid.Meter
git init
git remote add li  li:li/Android.Meter
git remote add lcj  lcj:li/Android.Meter



 cd $work_path/AndroidLib
mkdir  Android.Meter645
cd Android.Meter645
git init
git remote add li  li:li/CMDAndroid.Meter645
git remote add cmd  cmd:Android.Meter645
git remote add lcj  lcj:li/CMDAndroid.Meter645
git remote set-url li  li:li/CMDAndroid.Meter645
git remote set-url lcj  lcj:li/CMDAndroid.Meter645

 cd $work_path/AndroidLib
mkdir  KMTAndroid.Meter645
cd KMTAndroid.Meter645
git init
git remote add li  li:li/Android.Meter645
git remote add lcj  lcj:li/Android.Meter645


 cd $work_path/AndroidLib
mkdir  Android.MeterFunction
cd Android.MeterFunction
git init
git remote add li  li:li/CMDAndroid.MeterFunction
git remote add cmd  cmd:Android.MeterFunction
git remote add lcj  lcj:li/CMDAndroid.MeterFunction
git remote set-url li  li:li/CMDAndroid.MeterFunction
git remote set-url lcj  lcj:li/CMDAndroid.MeterFunction


 cd $work_path/AndroidLib
mkdir  KMTAndroid.MeterFunction
cd KMTAndroid.MeterFunction
git init
git remote add li  li:li/Android.MeterFunction
git remote add lcj  lcj:li/Android.MeterFunction
git remote add kmt kmt:Android.MeterFunction


cd $work_path/AndroidLib
mkdir  Android.P645
cd Android.P645
git init
git remote add li  li:li/CMDAndroid.P645
git remote add cmd  cmd:Android.P645
git remote add lcj  lcj:li/CMDAndroid.P645
git remote set-url li  li:li/CMDAndroid.P645
git remote set-url lcj  lcj:li/CMDAndroid.P645

 cd $work_path/AndroidLib
mkdir  KMTAndroid.P645
cd KMTAndroid.P645
git init
git remote add li  li:li/Android.P645
git remote add lcj  lcj:li/Android.P645

cd $work_path
mkdir  gitolite-admin-CMD
cd gitolite-admin-CMD
git init
git remote add li  li:li/gitolite-admin-CMD
git remote add cmd  cmd:gitolite-admin
git remote add lcj  lcj:li/gitolite-admin-CMD


 cd $work_path/AndroidLib
mkdir  Android.SecUnit
cd Android.SecUnit
git init
git remote add li  li:li/CMDAndroid.SecUnit
git remote add cmd  cmd:Android.SecUnit
git remote add lcj  lcj:li/CMDAndroid.SecUnit
git remote set-url li  li:li/CMDAndroid.SecUnit
git remote set-url lcj  lcj:li/CMDAndroid.SecUnit



cd $work_path/AndroidLib
mkdir  KMTAndroid.SecUnit
cd KMTAndroid.SecUnit
git init
git remote add li  li:li/Android.SecUnit
git remote add lcj  lcj:li/Android.SecUnit




cd /home/li/.AndroidStudio3.6/
git init
git remote add vm vm:AndroidStudio

 cd $work_path/
 mkdir O2OA
 cd O2OA
 git init
 git remote add gitee  git@gitee.com:o2oa/O2OA.git
 git remote add github   git@github.com:o2oa/o2oa.git


 cd $work_path/
 mkdir shadowsocks-android
 cd shadowsocks-android
 git init
 git remote add github github:shadowsocks/shadowsocks-android.git


 cd ~/.config/JetBrains/IntelliJIdea2020.1/
git init
git remote add vm vm:IntelliJIdea2020.1.git

cd $work_path/
mkdir rt-thread
cd rt-thread
git init
 git remote add gitee  gitee:rtthread/rt-thread.git


  cd $work_path/
 mkdir FreeRTOS
 cd FreeRTOS
 git init
 git remote add github github:FreeRTOS/FreeRTOS.git


  cd $work_path/
 mkdir fonts
 cd fonts
 git init
 git remote add github github:powerline/fonts.git

