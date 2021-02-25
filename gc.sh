#! /bin/bash


function gc(){

    for file in $work_path/*
    do  
    if test -d $file
    then    
        
        if [   -d ${file}'/.git'   ] ; then 
          
        cd $file       
        echo $file 
        git  gc --auto 
  
        fi   
    fi
    echo 
    done
    
}

work_path=$(dirname $(dirname $(readlink -f $0)))
gc  
work_path=$work_path/AndroidLib
gc  






