#!/bin/bash

PWD=`pwd`
echo $PWD
#TARGETDIR=~/vagrant_dir/$1/
TARGETDIR=/home/maekawa/vagrant_dir/VagrantJenkins-2/
cd $TARGETDIR
echo $TARGETDIR

touch run.lock

#git fetch origin master
#git pull origin master
#/usr/bin/vagrant up
