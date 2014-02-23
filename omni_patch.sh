#!/bin/bash

#Patch by MrGezz

DIR=$(pwd)

cd $DIR/build/
git fetch https://github.com/deedwar/platform_build.git beanstalk-kitkat && git cherry-pick c1eab3d111e49d8fc44749d81e7f5610a4443fd3

