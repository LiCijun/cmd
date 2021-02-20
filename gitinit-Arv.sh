#! /bin/bash
work_path=$(dirname $(dirname $(readlink -f $0)))
echo Git Repo Path:$work_path
function initRemote(){ 
#echo  $git_Repo_Path   $1
if [ "$1" = "lis" ] ; 
then
#echo  $git_Repo_Path   $1
remote=$(git remote | grep -w "li" )
if [ ! -n "$remote" ]; then git remote add "li" "li":li/$git_Repo_Path.git; fi 
return 
fi

if [ "$1" = "lcjs" ] ;
then
#echo  $git_Repo_Path   $1
remote=$(git remote | grep -w "lcj" )
if [ ! -n "$remote" ]; then git remote add "lcj" "lcj":li/$git_Repo_Path.git; fi 
return 
fi


if [ -n "$1" ] ;then
#echo  $git_Repo_Path   $1
 remote=$(git remote | grep -w "$1" )
if [ ! -n "$remote" ]; 
	then 
		git remote add "$1" "$1":$git_Repo_Path.git;
		echo git remote add "$1" "$1":$git_Repo_Path.git;
	fi 
#	echo "$remote" Exit;
	return
fi

}
function initGit(){ 
#echo ALL Param $*
git_Repo_Path=$1
cd $work_path
if [ ! -d $git_Repo_Path ] ; then mkdir -p $git_Repo_Path ; fi
cd $git_Repo_Path
if [ ! -d .git ] ; then git init ; fi 

for var in ${@:2}  
do   
initRemote $var;  
done  

}

function initGithub(){ 
 
git_Repo_Path=$2
cd $work_path
if [ ! -d $git_Repo_Path ] ; then mkdir -p $git_Repo_Path ; fi
cd $git_Repo_Path
if [ ! -d .git ] ; then git init ; fi 


remote=$(git remote | grep -w "github" )
if [ ! -n "$remote" ]; then git remote add "github" "github":$1/$git_Repo_Path.git; fi 

for var in ${@:3}  
do   
initRemote $var;  
done  

}


initGit AppRelease    kmt  vm cmd lis lcjs dsm dsmnfs
initGit cepripro      kmt  vm cmd lis lcjs dsm dsmnfs
initGit fss2release    kmt  vm cmd lis lcjs dsm dsmnfs
initGit www.keymantek.com    kmt  vm cmd lis lcjs dsm dsmnfs



work_path=$work_path/AndroidLib



