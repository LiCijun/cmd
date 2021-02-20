#! /bin/bash


function getdir(){


    for file in $work_path/*
    do  
    if test -d $file
    then    
        
        if [   -d ${file}'/.git'   ] ; then 
          
     cd $file
     echo
      echo $file ;  
    git  status
        fi   
    fi
    done
    
}

work_path=$(dirname $(dirname $(readlink -f $0)))
getdir 
work_path=$work_path/AndroidLib
getdir 


