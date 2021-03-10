#! /bin/bash

function fsck(){

    for file in $work_path/*
    do  
    if test -d $file
    then    
        
        if [   -d ${file}'/.git'   ] ; then 
          
        cd $file       
        echo $file 
        git  fsck --full
  
        fi   
    fi
    echo 
    done
    
}

work_path=$(dirname $(dirname $(readlink -f $0)))
fsck  
work_path=$work_path/AndroidLib
fsck  



