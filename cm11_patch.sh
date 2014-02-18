#!/bin/bash

#patch by MrGezz

DIR=$(pwd)

cd $DIR/build/
git fetch https://github.com/thdDude/android_build.git cm-11.0X && git cherry-pick 520240244ce3a994699dbd214c17af519327abbf

cd $DIR/vendor/cm/
git fetch https://github.com/thdDude/android_vendor_cm.git cm-11.0X && git cherry-pick e671241070a7b093c80c64d0ae92f8466310de6d
