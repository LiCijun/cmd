#! /bin/bash
#push all

function pullall(){

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

        lastc=${var: -1}
#        echo lastc $lastc
        if [ "$lastc"x = 0x ] ;
        then
          git remote remove $var;
          echo  $file     git remote remove $var;
        fi;
        continue ;
 
    
        echo 
        done       
    
        fi   
    fi
    echo 
    done
    
}

work_path=$(dirname $(dirname $(readlink -f $0)))
pullall 
work_path=$work_path/AndroidLib
pullall 






