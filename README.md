# 负一屏demo环境

## service包
其中**dispatcher-debug.apk**为负一屏服务进程

## client包
负一屏服务进程的client端，目前为Launcher进程

## 使用说明
1. 需要先安装service apk
> adb install -r service\dispatcher-debug.apk

2. 安装对应的client apk，由于这边是launcher，所以需要做disable-verity，然后重启手机
> adb root
> adb disable-verity
> adb reboot

3. remount system分区，并push launcher apk到对应的位置，最后重启手机即可
> adb root
> adb remount
> adb shell rm -r /system/priv-app/oat
> adb push client\ZsLauncher.apk /system/priv-app/ZsLauncher.apk
> adb reboot

## 一键脚本
windows请使用：push_script.bat
该脚本会自动完成上述123的动作
