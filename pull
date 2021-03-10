#! /bin/bash
#push all
function pull-remote()
{
    var=$1
    cbr=$2
    echo pull  all   from  $var  $cbr  
    echo git pull   $var $cbr  -v  --progress      
    git pull   $var  $cbr  -v   --progress
    echo 
}
function pull(){
    aa=$(git rev-parse --is-inside-work-tree)
    if [ $? -ne 0 ]; then
        echo "不是 git 仓库 "
        return 128
    fi  

    cbr=`git symbolic-ref --short -q HEAD`    


    if [ "$cbr"x = x ] ;then
        continue ;
    fi 

    mm=$(git remote) ;
    echo  Current branch :$cbr   The remote :$mm ;    
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
                pull-remote $var $cbr
            fi            
        else
            pull-remote $var $cbr
        fi         
    done     
}
pull $*






