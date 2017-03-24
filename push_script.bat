adb install -r service\dispatcher-debug.apk
adb root
adb disable-verity
adb reboot

ping -n 45 127.0.0.1>nul

adb root
adb remount
adb shell rm -r /system/priv-app/ZsLauncher/oat
adb push client\ZsLauncher.apk /system/priv-app/ZsLauncher/ZsLauncher.apk
adb reboot