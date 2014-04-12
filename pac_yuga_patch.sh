#!/bin/bash

#patch by MrGezz

DIR=$(pwd)
cd $DIR/build/
git fetch https://github.com/MrGezz/platform_build.git kk44 && git cherry-pick 7b0baec1a66e1ef7424a0963b68bfdf3aa840712

cd $DIR/build/
git fetch https://github.com/MrGezz/platform_build.git kk44 && git cherry-pick 13054d4a8720eb508d17e5ac1ea6ad865566b3cb

cd $DIR/bootable/recovery/
git fetch https://github.com/daeiron/android_bootable_recovery.git cm-11.0 && git cherry-pick 832f32dd47934e961e0e727f2f293c4ce9323298

cd $DIR/system/vold/
git fetch https://github.com/daeiron/android_system_vold.git cm-11.0 && git cherry-pick 1ca03c23ad893686b780bd1b9b8d62a74a9f2a79

cd $DIR/hardware/qcom/display-caf/
git fetch https://github.com/daeiron/android_hardware_qcom_display-caf.git cm-11.0 && git cherry-pick e257b9ffd6ab56dc8ed27a1574c58e98358c3a9b

cd $DIR/vendor/pac/
git fetch https://github.com/MrGezz/android_vendor_pac.git pac-4.4 && git cherry-pick 3d32164b443694ae9282115a9b3ea676661765e5

cd $DIR/system/vold/
git fetch https://github.com/MrGezz/android_system_vold.git cm-11.0 && git cherry-pick 33fcbe2f1fc9aa0892b9cb4d2b9e5c48df322a5e



