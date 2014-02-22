#!/bin/bash

#patch by MrGezz

DIR=$(pwd)

cd $DIR/build/
git fetch https://github.com/thdDude/android_build.git cm-11.0X && git cherry-pick 520240244ce3a994699dbd214c17af519327abbf

cd $DIR/vendor/cm/
git fetch https://github.com/thdDude/android_vendor_cm.git cm-11.0X && git cherry-pick e671241070a7b093c80c64d0ae92f8466310de6d

cd $DIR/frameworks/native/
git fetch https://github.com/deedwar/android_frameworks_native.git beanstalk-kitkat2 && git cherry-pick a893b04d6f52aa48d4207cf8e52a36f6f40114c6


#compile with linaro
cd $DIR/build/
git fetch https://github.com/deedwar/platform_build.git beanstalk-kitkat && git cherry-pick c1eab3d111e49d8fc44749d81e7f5610a4443fd3

#revert dirty region commit
cd $DIR/frameworks/base/
git fetch https://github.com/CyanogenMod/android_frameworks_base.git cm-11.0 && git revert -n 956497ec7d387135caf42b574275fa91e8f5b53c
