#! /bin/bash

function fetch-remote()
{
        var=$1
        echo fetch   from   $var  $2   ; 
        git  fetch  $var  -v --progress 
        echo 
}
function fetchall(){

    for file in $work_path/*
    do  
    if test -d $file
    then    
        
        if [   -d ${file}'/.git'   ] ; then 
          
        cd $file       
        

        mm=$(git remote) ;  
         
        echo $mm ;    
        for var in $mm ; do

        if [ "$var"x = alix ] ;  
            then
              continue ;
        fi

        if [[ $# -gt 0 ]]; then
            rt=$(echo $* | grep -w $var)

 #           echo ALL:$*  var:$var  rt  :  $rt
            if [[ "$rt"xx = xx ]]; then            
                continue ;
            else
                fetch-remote $var $file 
            fi            
        else
            fetch-remote $var $file 
        fi 
 


        done       
    
        fi   
    fi
    echo 
    done
    
}

work_path=$(dirname $(dirname $(readlink -f $0)))
fetchall  $*
work_path=$work_path/AndroidLib
fetchall  $* 


