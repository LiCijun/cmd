#! /bin/bash


function getdir(){

if [ -n "$1" ]; 
then

    for file in $work_path/*
    do  
    if test -d $file
    then    

    if [   -d ${file}'/.git'   ] ; then 
          
     cd $file
      
      
   branch=$(git branch )      
if [ ! -n "$branch" ];
    then 
    
remote=$(git remote | grep "$1" )
if [  -n "$remote" ]; 
then
    echo  $1  $file ; 
    git pull $1 master; 
fi 


    fi         
        fi   
    fi
    done
else
   echo '请输入远程仓库名'
    fi
    
}

work_path=$(dirname $(dirname $(readlink -f $0)))
getdir $1
work_path=$work_path/AndroidLib
getdir $1
