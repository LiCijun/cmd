#! /bin/bash
function fetch-remote()
{
    var=$1
    echo Fetch $var    ;  
    git  fetch -v --progress $var
    echo 
}
function fetch(){
    aa=$(git rev-parse --is-inside-work-tree)
    if [ $? -ne 0 ]; then
        echo "不是 git 仓库 "
        return 128
    fi  

    mm=$(git remote) ;
    echo The remote :$mm ;    
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
                fetch-remote $var 
            fi            
        else
            fetch-remote $var 
        fi         
    done     
}
fetch $*




