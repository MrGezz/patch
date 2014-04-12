#!/bin/bash

#Patch by MrGezz

DIR=$(pwd)
cd $DIR/build/
git fetch https://github.com/MrGezz/platform_build.git kk44 && git cherry-pick 7b0baec1a66e1ef7424a0963b68bfdf3aa840712

cd $DIR/build/
git fetch https://github.com/MrGezz/platform_build.git kk44 && git cherry-pick 13054d4a8720eb508d17e5ac1ea6ad865566b3cb

cd $DIR/frameworks/base/
git fetch https://github.com/CyanogenMod/android_frameworks_base.git cm-11.0 && git revert -n 956497ec7d387135caf42b574275fa91e8f5b53c

cd $DIR/frameworks/native/
git fetch https://github.com/deedwar/android_frameworks_native.git beanstalk-kitkat && git cherry-pick 00d1de13f0d370f7853ab0a060181da4504f5af4

cd $DIR/frameworks/native/
git fetch https://github.com/deedwar/android_frameworks_native.git beanstalk-kitkat && git cherry-pick a893b04d6f52aa48d4207cf8e52a36f6f40114c6

cd $DIR/build/
git fetch https://github.com/MrGezz/platform_build.git kk44 && git cherry-pick 7b0baec1a66e1ef7424a0963b68bfdf3aa840712

#fix for media
cd $DIR/hardware/qcom/media/
git fetch https://github.com/MrGezz/android_hardware_qcom_media.git cm-11.0 && git cherry-pick -m 1 3f4e0383db5729c54cf49562104220be41051fa4

