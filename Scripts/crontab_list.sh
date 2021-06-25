# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
44 23 * * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1


#极速版我是大老板
38 */4 * * * node /scripts/jd_wsdlb.js >> /scripts/logs/jd_wsdlb.log 2>&1
#京喜领88元红包(6.31到期)
20 1,6,12,21 * * * node /scripts/jd_jxlhb.js >> /scripts/logs/jd_jxlhb.log 2>&1
#明星小店(星店长，2021-06-10)
37 0,20 * * * node /scripts/jd_star_shop.js >> /scripts/logs/jd_star_shop.log 2>&1
#直播间京豆（全局）
#*/15 * * * * node /scripts/jd_live_red.js >> /scripts/logs/jd_live_red.log 2>&1
#小米运动步数
15 17 * * * node /scripts/backUp/xmSports.js >> /scripts/logs/xmSports.log 2>&1
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
1 0,3,9,15 * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
#京喜财富岛提现
0,1 0 * * * node /scripts/jd_jxcfdtx.js >> /scripts/logs/jd_jxcfdtx.log 2>&1
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
# 导出所有互助码
47 5 */2 * * node /scripts/jd_get_share_code.js >> /scripts/logs/jd_get_share_code.log 2>&1
# 取关京东店铺商品
48 11,17 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
