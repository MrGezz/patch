#!/bin/bash

DIR=$(pwd)

cd $DIR/frameworks/native/
git fetch https://github.com/deedwar/android_frameworks_native.git beanstalk-kitkat2 && git cherry-pick 00d1de13f0d370f7853ab0a060181da4504f5af4

cd $DIR/frameworks/native/
git fetch https://github.com/deedwar/android_frameworks_native.git beanstalk-kitkat2 && git cherry-pick a893b04d6f52aa48d4207cf8e52a36f6f40114c6

cd $DIR/device/sony/fuji-common/
git fetch https://github.com/MrGezz/android_device_sony_fuji-common.git beanstalk-kitkat && git cherry-pick ed85b92021fd23c92b6e141f172551c943ea1fc4

cd $DIR/device/sony/fuji-common/
git fetch https://github.com/MrGezz/android_device_sony_fuji-common.git beanstalk-kitkat && git cherry-pick 224c0e9f3c783f85b290062df1e434d1fe75f58e
