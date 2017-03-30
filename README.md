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


##版本更新记录：
------------------
### Freshday APK v2.0 版本 新增功能点：
2017年3月30日 10:21:48  
- 【负一屏】普通用户查看预约(freshday_game_041)  
- 【负一屏】未登录酷派账号的用户在设置页面查看赛事预约(freshday_game_040)  
- 【负一屏】普通用户删除某个收藏(freshday_game_038)  
- 【负一屏】普通用户批量删除收藏(freshday_game_039)  
- 【负一屏】普通用户查看收藏(freshday_game_036)  
- 【负一屏】普通用户删除玩过的H5游戏记录(freshday_game_034)  
- 【负一屏】普通用户查看玩过的H5游戏记录(freshday_game_033)  
- 【负一屏】未登录酷派账号的用户在设置页面查看玩过的H5游戏记录(freshday_game_032)  
- 【负一屏】普通用户在设置页面查看或退出账号(freshday_game_031)  
- 【负一屏】未登录酷派账号的用户在设置页面登录或注册账号(freshday_game_030)  
- 【负一屏】通过预约提醒去查看电竞直播（freshday_game_011）  
- 【负一屏】预约提醒时用户稍后再去查看电竞直播（freshday_game_012）  
- 【负一屏】预约提醒的再次提醒时用户去查看电竞直播（freshday_game_013）  
- 【负一屏】普通用户查看电竞直播详情页的评论（freshday_game_015）  
- 【负一屏】普通用户查看电竞直播详情页上较旧的评论（freshday_game_016）  
- 【负一屏】普通用户需要知道是否有新评论（freshday_game_017）  
- 【负一屏】普通用户在直播详情页查看直播（freshday_game_020）  
- 【负一屏】普通用户在直播详情页暂停播放直播（freshday_game_021）  
- 【负一屏】普通用户查看H5游戏详情页（freshday_game_045）  
- 【负一屏】普通用户在负一屏首页直接玩H5游戏（freshday_game_046）  
- 【负一屏】普通用户将该H5游戏在桌面生成快捷方式（freshday_game_049）  
- 【负一屏】普通用户想在负一屏查看天气（freshday_game_054）  
