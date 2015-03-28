#!/bin/sh

PWD=`pwd`
echo $PWD
#TARGETDIR=~/vagrant_dir/$1/
TARGETDIR=~/vagrant_dir/VagrantJenkins-2/
cd $TARGETDIR
echo $TARGETDIR

touch run.lock

git fetch origin master
git pull origin master
#vagrant up
