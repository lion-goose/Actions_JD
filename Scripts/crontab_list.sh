# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
44 23 * * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1



#直播间京豆（全局）
15 20 */30 * * node /scripts/jd_live_red.js >> /scripts/logs/jd_live_red.log 2>&1
#小米运动步数
15 17 * * * node /scripts/xmSports.js >> /scripts/logs/xmSports.log 2>&1
#京东极速版红包(活动时间：2021-5-5至2021-5-5)
39 0,23 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1
# 京东抽奖机
0 */8 * * * node /scripts/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 京东全民开红包
6 0-23/6 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
# 摇京豆
2 0,8 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
# crazyJoy自动每日任务
10 8,12 * * * node /scripts/jd_crazy_joy.js >> /scripts/logs/jd_crazy_joy.log 2>&1
# 东东小窝
15 5 * * * node /scripts/jd_small_home.js >> /scripts/logs/jd_small_home.log 2>&1
# 东东超市
22 */6 * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
# 京喜农场
12 0,8,16,22 * * * node /scripts/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1
#京喜财富岛
5 */3 * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
# 微信小程序京东赚赚
1 0,12 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
# 十元街
4 */4 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
# 领京豆额外奖励(每日可获得3京豆)
13 */4 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
# 健康社区
25 */6 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1
# 签到领现金
32 9,13,17,23 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
# 签到领现金助力
0,5 0 * * * node /scripts/jd_cash_help.js >> /scripts/logs/jd_cash_help.log 2>&1
# 导出所有互助码
47 5 */2 * * node /scripts/jd_get_share_code.js >> /scripts/logs/jd_get_share_code.log 2>&1
# 取关京东店铺商品
48 */3 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
#京东宠汪汪
15 0-23/5 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
#宠汪汪偷好友积分与狗粮
10 0-21/5 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
#预存validate
58 7,15,23 * * * node /scripts/jd_validate_Worker.js >> /scripts/logs/jd_validate_Worker.log 2>&1
#宠汪汪兑换京豆
59 7,15,23 * * * node /scripts/jd_reward.js >> /scripts/logs/jd_reward.log 2>&1
#金榜创造营
13 1,22 * * * node /scripts/jd_gold_creator.js >> /scripts/logs/jd_gold_creator.log 2>&1
#汪汪乐园每日助力
30 15 * * * node /scripts/jd_joy_park_helpcdle.js >> /scripts/logs/jd_joy_park_helpcdle.log 2>&1
30 14 * * * node /scripts/jd_joy_park.js >> /scripts/logs/jd_joy_park.log 2>&1
#环境测试
0 9 * * * node /scripts/jd_api_test.js >> /scripts/logs/jd_api_test.log 2>&1
#点点券
5 0,20 * * * node /scripts/jd_necklacesmiek2221.js >> /scripts/logs/jd_necklacesmiek2221.log 2>&1
