import 'package:flutter_study/models/list_model.dart';

// 宠物card
List<PetCardViewModel> petCardViewModelData = [
  PetCardViewModel(
    coverUrl:
        'https://tse1-mm.cn.bing.net/th/id/OIP.O1YcFNXiyf2UdFOGrVHU1AHaEK?pid=Api&rs=1',
    userImgUrl:
        'https://tse2-mm.cn.bing.net/th/id/OIP.a-ICJQlVpOPQioTAAy6aOgHaE5?pid=Api&rs=1',
    userName: '白云苍狗',
    description: '小喵 | xxxxx',
    publishTime: '刚刚',
    publishContent: '日有所吃，夜有所胖',
    topic: '萌宠小屋',
    replies: 54,
    likes: 25,
    shares: 8,
  ),
  PetCardViewModel(
    coverUrl:
        'https://tse2-mm.cn.bing.net/th/id/OIP.a-ICJQlVpOPQioTAAy6aOgHaE5?pid=Api&rs=1',
    userImgUrl:
        'https://tse2-mm.cn.bing.net/th/id/OIP.a-ICJQlVpOPQioTAAy6aOgHaE5?pid=Api&rs=1',
    userName: '白云苍狗',
    description: '小喵 | xxxxx',
    publishTime: '1小时前',
    publishContent: '少年已成人，忘却了诗人和牧笛，心中偶尔渴望原野，只是当年的风不再',
    topic: '萌宠小屋',
    replies: 54,
    likes: 25,
    shares: 8,
  ),
  PetCardViewModel(
    coverUrl:
        'https://tse4-mm.cn.bing.net/th/id/OIP.-AQTeZiB3etq9O9tRZyTtwHaE8?pid=Api&rs=1',
    userImgUrl:
        'https://tse2-mm.cn.bing.net/th/id/OIP.a-ICJQlVpOPQioTAAy6aOgHaE5?pid=Api&rs=1',
    userName: '白云苍狗',
    description: '小喵 | xxxxx',
    publishTime: '9小时前',
    publishContent: '在隆冬，我终于知道，我身上有一个不可战胜的夏天。',
    topic: '萌宠小屋',
    replies: 76,
    likes: 222,
    shares: 89,
  ),
  PetCardViewModel(
    coverUrl:
        'https://tse2-mm.cn.bing.net/th/id/OIP.Y1301sJdA1y4fI-4WigkIgHaEK?pid=Api&rs=1',
    userImgUrl:
        'https://tse2-mm.cn.bing.net/th/id/OIP.a-ICJQlVpOPQioTAAy6aOgHaE5?pid=Api&rs=1',
    userName: '白云苍狗',
    description: '小喵 | xxxxx',
    publishTime: '20小时前',
    publishContent: '反正是绚烂，反正是到来，反正是背负慢慢凋残的孤独，耀眼的孤独，义无反顾的孤独。',
    topic: '萌宠小屋',
    replies: 567,
    likes: 654,
    shares: 333,
  ),
];

// 说说card
List<TalkCardViewModel> talkCardViewModelData = [
  TalkCardViewModel(
    userName: '白云苍狗',
    userImgUrl:
        'https://tse4-mm.cn.bing.net/th/id/OIP.mxyGk5h00-CvuWyWI7ZKVgAAAA?w=181&h=180&c=7&o=5&pid=1.7',
    saying: '反正是绚烂，反正是到来，反正是背负慢慢凋残的孤独，耀眼的孤独，义无反顾的孤独。',
    publishTime: '刚刚',
    pic:
        'https://tse2-mm.cn.bing.net/th/id/OIP.a-ICJQlVpOPQioTAAy6aOgHaE5?pid=Api&rs=1',
    comments: [
      Comment(
        source: true,
        fromUser: '张三',
        content: '山重水复疑无路 make后面不加to',
      ),
      Comment(
        source: false,
        fromUser: '白云苍狗',
        toUser: '张三',
        content: '是金子，总会被我花光。',
      ),
      Comment(
        source: true,
        fromUser: '李四',
        content: '我一个美女怎么敢谈恋爱呢？我有什么资格谈恋爱，我配吗？我的生活只有漂亮和美丽。我凭什么谈恋爱？凭我比别人漂亮几百倍吗？',
      ),
    ],
  ),
  TalkCardViewModel(
    userName: '王五',
    userImgUrl:
        'https://tse4-mm.cn.bing.net/th/id/OIP.mxyGk5h00-CvuWyWI7ZKVgAAAA?w=181&h=180&c=7&o=5&pid=1.7',
    saying: '如果我16岁，我可以悄悄的说我好喜欢你，如果我26岁，我可以大声告诉你我很爱你，可惜我6岁，我什么都给不了你，我还要上小学。',
    publishTime: '2小时前',
    pic:
        'https://tse2-mm.cn.bing.net/th/id/OIP.a-ICJQlVpOPQioTAAy6aOgHaE5?pid=Api&rs=1',
    comments: [
      Comment(
        source: true,
        fromUser: '张三',
        content: '山重水复疑无路 make后面不加to',
      ),
      Comment(
        source: false,
        fromUser: '白云苍狗',
        toUser: '张三',
        content: '是金子，总会被我花光。',
      ),
      Comment(
        source: true,
        fromUser: '李四',
        content: '我一个美女怎么敢谈恋爱呢？我有什么资格谈恋爱，我配吗？我的生活只有漂亮和美丽。我凭什么谈恋爱？凭我比别人漂亮几百倍吗？',
      ),
    ],
  ),
  TalkCardViewModel(
    userName: '李四',
    userImgUrl:
        'https://tse4-mm.cn.bing.net/th/id/OIP.mxyGk5h00-CvuWyWI7ZKVgAAAA?w=181&h=180&c=7&o=5&pid=1.7',
    saying: '我一个美女怎么敢谈恋爱呢？我有什么资格谈恋爱，我配吗？我的生活只有漂亮和美丽。我凭什么谈恋爱？凭我比别人漂亮几百倍吗？',
    publishTime: '3小时前',
    comments: [
      Comment(
        source: true,
        fromUser: '张三',
        content: '山重水复疑无路 make后面不加to',
      ),
      Comment(
        source: false,
        fromUser: '白云苍狗',
        toUser: '张三',
        content: '是金子，总会被我花光。',
      ),
    ],
  ),
];

// 用户列表
List<UserItemModel> userItemData = [
  UserItemModel(
    userImgUrl:
        'https://tse4-mm.cn.bing.net/th/id/OIP.qmr-VViSNXCMeuPNirEN7gAAAA?w=213&h=213&c=7&o=5&pid=1.7',
    userName: '小白',
    publishTime: '下午 10:17',
    message: '[哭笑不得]',
  ),
  UserItemModel(
    userImgUrl:
        'https://tse1-mm.cn.bing.net/th/id/OIP.nE49tQfQo411FAv1Rp332QHaHa?w=177&h=180&c=7&o=5&pid=1.7',
    userName: '文件传输助手',
    publishTime: '下午 10:17',
    message: '[文件] lib.zip',
  ),
  UserItemModel(
    userImgUrl:
        'https://tse4-mm.cn.bing.net/th/id/OIP.mxyGk5h00-CvuWyWI7ZKVgAAAA?w=181&h=180&c=7&o=5&pid=1.7',
    userName: '订阅号消息',
    publishTime: '下午 10:17',
    message: '武汉本地宝:好看好玩还宜居！留在武汉的千万别错过这个好选择！8折买房还送全屋装修',
  ),
  UserItemModel(
    userImgUrl:
        'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1616447740,2353901875&fm=26&gp=0.jpg',
    userName: '微信支付',
    publishTime: '下午 10:17',
    message: '微信支付凭证',
  ),
  UserItemModel(
    userImgUrl:
        'https://tse1-mm.cn.bing.net/th/id/OIP.DQuaFlavRxzCBOtLkHwgUAAAAA?pid=Api&rs=1',
    userName: '微信团队',
    publishTime: '下午 10:17',
    message: '登录操作通知',
  ),
  UserItemModel(
    userImgUrl:
        'https://tse4-mm.cn.bing.net/th/id/OIP.qmr-VViSNXCMeuPNirEN7gAAAA?w=213&h=213&c=7&o=5&pid=1.7',
    userName: '小白',
    publishTime: '下午 10:17',
    message: '[哭笑不得]',
  ),
  UserItemModel(
    userImgUrl:
        'https://tse1-mm.cn.bing.net/th/id/OIP.nE49tQfQo411FAv1Rp332QHaHa?w=177&h=180&c=7&o=5&pid=1.7',
    userName: '文件传输助手',
    publishTime: '下午 10:17',
    message: '[文件] lib.zip',
  ),
  UserItemModel(
    userImgUrl:
        'https://tse4-mm.cn.bing.net/th/id/OIP.mxyGk5h00-CvuWyWI7ZKVgAAAA?w=181&h=180&c=7&o=5&pid=1.7',
    userName: '订阅号消息',
    publishTime: '下午 10:17',
    message: '武汉本地宝:好看好玩还宜居！留在武汉的千万别错过这个好选择！8折买房还送全屋装修',
  ),
  UserItemModel(
    userImgUrl:
        'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1616447740,2353901875&fm=26&gp=0.jpg',
    userName: '微信支付',
    publishTime: '下午 10:17',
    message: '微信支付凭证',
  ),
  UserItemModel(
    userImgUrl:
        'https://tse1-mm.cn.bing.net/th/id/OIP.DQuaFlavRxzCBOtLkHwgUAAAAA?pid=Api&rs=1',
    userName: '微信团队',
    publishTime: '下午 10:17',
    message: '登录操作通知',
  ),
  UserItemModel(
    userImgUrl:
        'https://tse4-mm.cn.bing.net/th/id/OIP.qmr-VViSNXCMeuPNirEN7gAAAA?w=213&h=213&c=7&o=5&pid=1.7',
    userName: '小白',
    publishTime: '下午 10:17',
    message: '[哭笑不得]',
  ),
  UserItemModel(
    userImgUrl:
        'https://tse1-mm.cn.bing.net/th/id/OIP.nE49tQfQo411FAv1Rp332QHaHa?w=177&h=180&c=7&o=5&pid=1.7',
    userName: '文件传输助手',
    publishTime: '下午 10:17',
    message: '[文件] lib.zip',
  ),
  UserItemModel(
    userImgUrl:
        'https://tse4-mm.cn.bing.net/th/id/OIP.mxyGk5h00-CvuWyWI7ZKVgAAAA?w=181&h=180&c=7&o=5&pid=1.7',
    userName: '订阅号消息',
    publishTime: '下午 10:17',
    message: '武汉本地宝:好看好玩还宜居！留在武汉的千万别错过这个好选择！8折买房还送全屋装修',
  ),
  UserItemModel(
    userImgUrl:
        'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1616447740,2353901875&fm=26&gp=0.jpg',
    userName: '微信支付',
    publishTime: '下午 10:17',
    message: '微信支付凭证',
  ),
  UserItemModel(
    userImgUrl:
        'https://tse1-mm.cn.bing.net/th/id/OIP.DQuaFlavRxzCBOtLkHwgUAAAAA?pid=Api&rs=1',
    userName: '微信团队',
    publishTime: '下午 10:17',
    message: '登录操作通知',
  ),
];

// 知乎热榜
List<ZhiHuBillboardModel> zhiHuBillboardModelData = [
  ZhiHuBillboardModel(
    title: '男子高速收费站 10 秒击败两黑衣大汉，什么技术？',
    description:
        '12 月 16 日，在陕西咸阳一高速收费站口，一名白衣男子和两名黑衣男子大打出手。视频中，白衣男子 10 余秒两拳将对方两人打倒。 白衣男子真棒！',
    hot: '4303 万热度',
    imgUrl:
        'https://pic1.zhimg.com/50/v2-e39c522e6600012ab2deb78f3aefbf8a_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '以现在的技术嫦娥 5 号只能带回来 2KG 土，那么几十年前阿波罗号怎么把人运回来？',
    description: '如题，难道技术退步',
    hot: '1321 万热度',
    imgUrl:
        'https://pic4.zhimg.com/50/v2-458dc17cd5aaf45abfba2bf640303413_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: 'WHO 将熬夜列为致癌因素，为何很多人明知熬夜危害还要熬夜？怎样熬夜能减少损害？',
    description:
        '近日，研究人员通过对 40 多万人的研究，首次揭示了健康睡眠模式与心力衰竭风险之间的关系。研究人员发现，睡眠模式最健康的人心力衰竭的风险降低了 42%。该研究结果发表在《循环》（Circulation）杂志。 在这项研究中，研究人员收集了来自英国生物银行（UK Biobank）数据库来自 2006 年 -2010 年的 502505 名参与者，年龄在 37 至 73 岁，在排除患有心衰的患者和睡眠数据不足的参与者，最终纳入 408802 名参与者。研究人员通过问卷调查的形式收集参与者的睡眠行为，包括作息模式，睡眠时间、失眠、打鼾和白天过度嗜睡，并通过这些行为评估整体的睡眠健康程度。 具体来说，研究人员将早起早睡，睡眠时长在 7-8 小时、很少或有时失眠，打鼾或是白天嗜睡定义为健康睡眠。如果符合健康标准，则加 1 分，若不符合，分值则为 0。健康睡眠评分总分为 0-5 分，分数越高，说明睡眠模式越健康。 研究人员通过 Fine-Gray 检验与竞争风险模型评估了健康睡眠评分与心力衰竭发生率之间的关系。结果显示，在随访的 10.1 年中，共记录了 5221 例心力衰竭，且健康睡眠得分越高，心力衰竭发生率越低。健康睡眠每增加 1 分，心力衰竭风险就降低 15%。对糖尿病、高血压、药物使用、遗传变异等其他变量进行调整后，该关联并没有显著变化。与健康睡眠评分只有 0~1 分的参与者相比，评分为 5 分的参与者发生心力衰竭的风险降低 42%。 全文：WHO 已将熬夜列为致癌因素，你还敢熬夜吗？',
    hot: '1263 万热度',
    imgUrl:
        'https://pic3.zhimg.com/80/v2-25bab24567adcef4cc004eb219b12596_1440w.jpg',
  ),
  ZhiHuBillboardModel(
    title: '如何看待富大龙首次发微博并为大秦赋及张鲁一说话？',
    description: '',
    hot: '844 万热度',
  ),
  ZhiHuBillboardModel(
    title: '王者荣耀 2020 KPL 秋季总决赛 DYG 4:0 AG 超玩会夺队史首冠，你有什么想说的？',
    description: '',
    hot: '838 万热度',
    imgUrl:
        'https://pic4.zhimg.com/50/v2-63da0380d4e0769cf2969f786beed71c_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '为什么嫦娥五号的返回器身上贴满了暖宝宝？',
    description:
        '嫦娥五号：「听说你们都以为我身上贴满了暖宝宝？…没错！是这样的！」 12 月 17 日 1 时 59 分，探月工程嫦娥五号返回器在内蒙古四子王旗预定区域成功着陆，漫漫风雪，跋涉而行，再寒冷的天也阻挡不住火热的心。嫦娥五号，欢迎回家！',
    hot: '781 万热度',
    imgUrl:
        'https://pic4.zhimg.com/50/v2-0303a526141613682676098ec6cc3057_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '如何看待受到导师学术不端的影响， 26 岁研究生重写论文，凌晨两点猝死家中？暴露出什么问题？',
    description:
        '「所以（我把）这个事交给他，将来如果在青藏高原打出油来了，那李源是第一作者，那他是要写到历史里去的。」「打出油来」「写进历史」，李源死后，导师季新辉还多次这样说。 12 月 18 日凤凰星报道，「我感觉我的导师好像不喜欢我」。2020 年 1 月 20 日，寒假回家前，李源（化名）对自己的好友说。此后 8 个月，因为疫情、毕业延期，他一直待在湖北的家里，拼命赶论文、改论文。 此前的 2019 年 9 月，他忙碌了一年半写完的论文，被导师宣布作废。按照导师要求，他花了三个月时间重写了一篇，但还是不合要求，被告知准备延期毕业。此后 8 个月，李源都在老家苦苦熬论文，直到 2020 年 9 月 14 日凌晨两点半，猝死在湖北的家中。 李源的电脑桌面很简洁，内容多与论文相关。 李源走后，他的电脑桌面上只有几个与论文相关的文件夹，显得异常干净。生前，他设置了「仅半年可见」的微信朋友圈，一片空白。直到死后，姐姐李倩（化名）代他发了两条「告亲友通知」。 26 年生涯，他从小学读到大学，又去北京读了研究生。生前，他像是存在于「两个世界」。亲人的记忆里，充满温情和疼爱；而在外界，他只留下了模糊的、被不断「否定」的痕迹。 在破解了高等级密码保护的手机之后，姐姐发现了第三重「世界」：李源长期忍受老师的压制教育；2019 年 9 月，李源写好的第一篇论文，因受导师学术不端事件影响而作废；因导师功利化的学术思想，李源被迫在没有项目数据的情况下，撰写油气勘探的「生产性」论文；2020 年上半年，李源多次催促导师修改论文，均被冷落；2020 年 9 月的多天里，导师突击式密集修改论文，迫使李源每天高强度工作，最终于凌晨猝死。 全文请戳： 导师学术不端，26 岁研究生重写论文、延期毕业，凌晨猝死',
    hot: '713 万热度',
    imgUrl:
        'https://pic2.zhimg.com/50/v2-315abbcd9431a5a09eee1888238cee26_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '如何看待可口可乐将裁员 2200 人，遣散费或高达 36 亿元（人民币）？',
    description:
        '继上月媒体和娱乐业巨头迪士尼宣布计划裁员 32000 人后，又一家美国巨头宣布裁员。 因新冠疫情期间销售额下降，可口可乐公司宣布将撤掉 2200 个工作岗位。疫情导致美国很多餐饮经营惨淡甚至关闭，这些都对可口可乐的销量造成重大影响。 可口可乐公司声明，此次裁员包括自愿和非自愿离职，公司预计将因此付出 3.5 亿美元（约合 23 亿人民币）至 5.5 亿美元（约合 36 亿人民币）的员工遣散费。 除了裁减工作岗位，可口可乐公司还计划将在美国四个地区的经营部门数量从 17 个减少至 9 个。目前他们没有透露具体哪些部门将受到影响。可口可乐也撑不住了，宣布裁员，遣散费或高达 36 亿元！ | 每经网',
    hot: '601 万热度',
  ),
  ZhiHuBillboardModel(
    title: '室友打了二十行代码，有三十个错误，他还适合编程吗?',
    description: '',
    hot: '541 万热度',
    imgUrl:
        'https://pic1.zhimg.com/50/v2-c678fa23539ef7d8a61100bc002bd3f1_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '如何评价电视剧《有翡》对外宣称耗资 8 个亿，呈现出来的却是 5 毛钱的布景和特效？',
    description:
        '鹅厂前期宣传铺垫的时候说为影视化《有翡》投资了五个亿。 《有翡》的另一位投资商华策影视的年报里显示这个项目的投资金额是 2.8 个亿。 加起了将近 8 个亿投资。',
    hot: '501 万热度',
    imgUrl:
        'https://pic2.zhimg.com/50/v2-0f27da41c92a9aafec517de5e47cc859_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '嫦娥五号任务月球样品正式交接，月壤重 1731 克，为什么少了 200 多克？',
    description:
        '为什么少了两百多克？ 12 月 19 日，重 1731 克的嫦娥五号任务月球样品正式交接。我国首次地外天体样品储存、分析和研究工作拉开序幕，将开展月球样品与科学数据的应用和研究。我们的太空：【快讯·航天】喜讯！1731 克！嫦娥五号任务月球样品正式交接！',
    hot: '494 万热度',
    imgUrl:
        'https://pic4.zhimg.com/80/v2-bbbd8990a26bc51b893f2246a0bc73c3_1440w.jpg',
  ),
  ZhiHuBillboardModel(
    title: '如何看待英雄联盟 2020 全明星赛，LPL 现役选手队伍未尝一胜？',
    description: '如何看待英雄联盟 2020 全明星赛，LPL 现役选手队伍未尝一胜？',
    hot: '460 万热度',
    imgUrl:
        'https://pic4.zhimg.com/50/v2-4872de97332ece659c72e7072ff44742_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '如何看待钟南山称「新冠病毒出现环境传人」？后续防疫应该加强哪些方面的工作？',
    description:
        '【钟南山称新冠病毒研究出现环境传播新课题】 「（新冠病毒）原来是人传人，现在出现了一个新的课题，环境传人。」 12 月 19 日，共和国勋章获得者、中国工程院院士、国家呼吸系统疾病临床医学研究中心主任钟南山在一个专题研讨会上发言称，新冠病毒的环境传播是新出现的课题，需要科学家寻找规律并研究预防措施。（广州日报）',
    hot: '417 万热度',
    imgUrl:
        'https://pic2.zhimg.com/80/v2-e40d7652d050d53902d09192f34557f8_1440w.jpg?source=1940ef5c',
  ),
  ZhiHuBillboardModel(
    title: '如何评价韩剧《甜蜜家园》？',
    description: '',
    hot: '407 万热度',
    imgUrl:
        'https://pic1.zhimg.com/80/v2-25b55c429acd4ca681db9ab3ce006d9e_1440w.jpg?source=1940ef5c',
  ),
  ZhiHuBillboardModel(
    title: '如何评价电影《紧急救援》？',
    description: '',
    hot: '400 万热度',
    imgUrl:
        'https://pic1.zhimg.com/50/v2-594d2932dccde39e7700857baf70977c_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '如何看待美媒「美国防部全面暂停与拜登团队过渡工作」？',
    description:
        '据美国政治新闻网站 Axios18 日报道，消息人士透露，美国国防部代理部长克里斯托弗·米勒已下令全面暂停与当选总统拜登团队的过渡工作，此举震惊了不少五角大楼官员。 据报道，拜登团队的一位高官并不了解相关消息。另一方面，国防部官员称在假期结束后合作有可能恢复，但并不清楚米勒为何下令暂停，也不了解特朗普是否批准了这一决定。有一位国防部官员将此举描述为「延期」，称国防部方面为了过渡工作已经忙得不可开交，要把接下来的过渡会议推迟到明年。 来源：海外网',
    hot: '399 万热度',
  ),
  ZhiHuBillboardModel(
    title: '如何看待 34 岁男子在驾校考科目一时身亡，表哥去驾校看现场被保安打断胳膊？',
    description:
        '12 月 15 日，河南南阳。杨先生反映，34 岁的外甥，近日在邓州市某驾校考科一时身亡。杨先生称，外甥死亡后，警方认定排除他杀，但杨先生表示不清楚外甥死亡的具体原因。杨先生表示，事发第二天，自己和家人一起去驾校看现场，驾校保安当着民警面对其家人大打出手，死者表哥右手被打骨折。杨先生称，目前希望得知外甥死因，还外甥一个说法。',
    hot: '365 万热度',
    imgUrl:
        'https://pic1.zhimg.com/50/v2-a4312ddd19d861e18f1d94d6b7f4bbab_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '如何看待黑龙江规定不得新建高度 500 米以上的建筑？',
    description:
        '记者从黑龙江省住建厅获悉，为防止出现「贪大、媚洋、求怪」等建筑乱象，黑龙江省严格限制盲目规划建设超高层「摩天楼」，要求不得新建高度 500 米以上建筑。 近日，黑龙江省住建厅、黑龙江省发改委联合下发《关于切实加强城市与建筑风貌管理工作的通知》，对高层建筑进行分类、分区域管理，打造城市错落有致的天际线。其中，不得新建高度 500 米以上建筑；新建 100 米以上建筑应充分论证、集中布局，与城市设计相协调，与消防救援能力相匹配；中小城市要严格控制新建超高层建筑，县城住宅要以多层或小高层为主。黑龙江建设网',
    hot: '352 万热度',
    imgUrl:
        'https://pic4.zhimg.com/80/v2-203bb458bedc45401a5f81f9befcec88_1440w.jpg?source=1940ef5c',
  ),
  ZhiHuBillboardModel(
    title: '如何看待日本政府称其强烈支持德国派军舰来亚洲？',
    description:
        '近日，为了对付中国 ，日本政府在一起与德国政府的会议中表示他们强烈支持德国派军舰来亚洲，与其举行联合军演。 据德国之声报道，向德国方面表示支持他们派军舰来亚洲的，是日本的防务大臣岸信夫。在近日的一次网上会议中，岸信夫向德国防长卡伦鲍尔表示他强烈支持德国军方计划在明年派出战舰来亚洲并，与日本自卫队举行联合军演的事情。 不仅如此，德国之声以及《日本时报》等日本媒体还都报道说，岸信夫在会议中明确表示他认为德国也能为「国际社会」确保中国南海的「航行自由」而出力，尤其是如果德国军舰能到「被中国想要控制」的南海巡航的话。 另外，一贯反华的德国之声，还在其介绍南海局势的段落时，不仅将中国捍卫自己主权领土的正当行为进行了歪曲和妖魔化，甚至还将台湾从中国分裂了出去，视之为一个独立个体。',
    hot: '349 万热度',
    imgUrl:
        'https://pic2.zhimg.com/50/v2-e2cea5785efb01c60c16578022934d35_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '发现队友把我的一辩稿发给对面的辩手了，怎么办？',
    description: '',
    hot: '323 万热度',
  ),
  ZhiHuBillboardModel(
    title: '为什么现在制作更精良的古装剧反而没小时候的古装剧好看？',
    description:
        '今天看到知乎上有人回答最遗憾的歌曲提到了《春光灿烂猪八戒》的片尾曲《卷睫盼》，于是回头又看了一集《春光灿烂猪八戒》。想起了当时看《春光灿烂猪八戒》的欢喜和感动，那个时候还在上小学，没有网络，每天打开电视看电视是最大的乐趣。感觉那个时候电视上的电视剧也非常好看，虽然没有现在技术好，但是那种感觉到现在还念念不忘。 现在虽然特效技术、化妆技术更好了，服装、动作更华丽了，但是至今看到的古装剧仍然很失望，甚至觉得没有小时候的那些电视剧好。屏幕上出现的金庸翻拍剧一部接一部，不时又传出要继续翻拍金老先生的《射雕英雄传》《侠客行》。可现在看到的钟汉良《天龙八部》感觉比黄日华版的《天龙八部》差太多，还有霍建华《笑傲江湖》早没有了吕颂贤《笑傲江湖》的味道。 是因为怀旧情结吗？还是其他，希望知友们谈谈你们的看法。 例外列出一些小时候看过的古装剧，来勾勾你们的回忆~ 《少年包青天》，至今仍然很爱看，太经典了，演员、配乐啥的都非常到位。 《穿越时空的爱恋》，第一次看到的国产穿越剧啊，比《宫》什么的好太多了。 《春光灿烂猪八戒》，徐峥的猪哥哥太萌了，还有他和小龙女的爱情最后也让人感动落泪。 《格格要出嫁》，这个有人记得吗？ 《寻秦记》，古天乐啊，项少龙啊。 《神雕侠侣》，古天乐的杨过，当时古天乐那么白，李若彤的小龙女，这个真的是女神啊，当时看她被尹志平那个是时候看的牙痒痒的。 《天龙八部》，每当黄日华使降龙十八掌时的背景音乐还记得吗？ 还有《状王宋世杰》《小李飞刀》《机灵小不懂》《少年张三丰》《康熙微服私访记》《铁齿铜牙纪晓岚》《李卫当官》《上错花轿嫁对郎》《至尊红颜》《侠女闯天关》《乌龙闯情关》《风云争霸》《风云》《封神榜之爱子情深》《萧十一郎》《东游记》《一脚定江山》《无敌县令》《大汉天子》《真命小和尚》《莲花童子哪吒》《孝庄秘史》《武林外史》…',
    hot: '322 万热度',
    imgUrl:
        'https://pic1.zhimg.com/50/v2-a5eecd76ef02307c0e7a1e9bc126ad00_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '苹果 iPhone Xs 维修期，直营店给我一个 iPhone8 备用机，但洗澡时摔坏了，我该怎么办?',
    description: '',
    hot: '274 万热度',
    imgUrl:
        'https://pic3.zhimg.com/50/v2-e9b2d1c367146bdfa6601ae033698022_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '为什么泾河龙王改了下雨的时辰和数量就要被杀，四海龙王水淹陈塘关却没事？',
    description: '',
    hot: '225 万热度',
  ),
  ZhiHuBillboardModel(
    title: '教师一辈子不评职称会怎么样？',
    description: '初中在编教师教龄十年，不想评职称',
    hot: '223 万热度',
  ),
  ZhiHuBillboardModel(
    title: '交通事故，三车追尾，我最后，责任认定我全责，协商对方不同意，狮子大开口，如何降低自己的损失？',
    description:
        '今天上午上班途中，遭遇追尾。 我是电动车，不需要驾照的那种（但本人有驾照，不是无证驾驶。）最高时速 50 码。 直行过程中，中车右侧变道超车，完全进入车道 3 秒左右，和前车追尾，我车速 45 码左右，刹车不及，追尾中车。 下车后，中车司机不承认自己追尾前车，说我撞他导致他追尾，交警来了之后，听取了我们 3 位司机的发言不一致，要求查看行车记录，只有中车安装，查看后，交警认定是中车追尾前车，我只需要负责追尾中车的责任。 然后达到事故中心，中车司机的儿子即车主本人和同事到场，因他们本人是广汽本田 4s 店员工，提出要求必须去工作的 4s 店维修，或者去成都 4s 店，我们一番协商，提出先拆，估算价格，不合适可以再协商。 对方是蓝色广本飞度，外观看后备箱门凹陷，右侧车灯碎了，保险杠凹陷，车主打开后备箱和我说里面的垫板，左右总成都要更换，在事故中心估价是 7000-8000，中午他把车开回 4s 店，不愿意拆，只说外观损伤，又给我估价，报价 9550，我们提出不能接受，联系了成都一家广本 4s 店，让对方去维修，费用我们全负责。 飞度车主开始答应了，下午协商签字的时候又反悔，坚持在自己工作的 4s 店维修，以「我已经把车开进工作的 4s 店，开出去修理影响工作」为理由，拒绝我们提出的成都修理，协商无果后我认领了责任认定书，我全责。 其中，中车保险公司人员未和我协商，全程是车主本人和同事提要求条件。 我因为是电动车，上不了牌照，只有交强险，保险公司只赔付 2000，全程我的保险公司人员劝我私了，说对方报价合理，很便宜了。 以上是今天追尾事故的大致流程，我不是想逃避我的责任，我的全责我承认，我该付的赔偿我也赔付。但对方一副你全责你活该的态度，报价几经更改，我提出的第三方修理等合理建议拒不接受，我心里也是委屈难言，现在已经走到对方车主请保险定损阶段，我询问过同行朋友，他们依旧可以在自己工厂修理，因为我是过错方，但我真的难以接受这个结果。 跪求知乎各位大佬帮忙，我如何保障不被对方敲竹杠，他联系的保险公司定损我可否拒绝承认？ 如何认定最终报告的车辆损害是我造成的？（因今天白天保险员和对方车主勾肩搭臂谈笑风生让我对保险公司定损报怀疑态度…） 车辆小的损伤可以修复，但车主强烈要求换新是否合理？我如何判定哪里可以修复，哪里一定要换新？ 车主因「影响工作」为理由拒绝我提议，这样造成的后果在后期裁定上，我能否减轻责任？（比如说他不同意我的提议，我也不同意他的，时间长了，他提出我要负担他误工费等损失？） 如果最终协商无法达成一致，走起诉途径，时间拖得越长是不是对我越不利？ 他本人是修理厂员工，在自己工作修理厂修理是否存在利益关系？我能不能以此拒绝他在工作地修理？ 今天一天人都是浑浑噩噩的，跪求大佬解惑。 附上事故当时照片和估价单。 本人已经做好最终走法律途径的心理准备，真的希望能有大佬帮忙分析一下，希望能减少点损失，本人也咨询了律师（淘宝 50 一次的这种，穷啊）感觉不是很靠谱，只说对方保险公司定损我可以不承认，最终协商不了就起诉，关于定损定价等方面没有太多实用建议，只说我可以不接受或者请专业修车团队。 真的太糟心了，我是过错方，我也承认我的错误，但对方这样做我似乎只能接受，泪奔。',
    hot: '217 万热度',
    imgUrl:
        'https://pic4.zhimg.com/50/v2-caa95ef3fa53fae19ffc8e920f19b913_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: 'C 盘快满了不敢乱删，请问该如何清理？',
    description: '',
    hot: '212 万热度',
    imgUrl:
        'https://pic4.zhimg.com/80/v2-953f80f1202f1d401e4adbd89cf62da0_720w.jpeg',
  ),
  ZhiHuBillboardModel(
    title: '参加 2021 年山东省考是什么体验？',
    description: '我就知道肯定会有这个问题，离考试还有两个小时，两个小时以后看看有没有人回答。',
    hot: '181 万热度',
    imgUrl:
        'https://pic2.zhimg.com/50/v2-34f076ab5b37f83002131e9504cdb552_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: 'iPhone 12 mini 能用 6 年吗？',
    description:
        '我目前正在使用的 iPhone SE（第 2 代），非常好用，但是 iPhone 12 mini 作为小屏手机，我也是非常喜欢的，怕 2021 年不再推出 iPhone 13 mini 了，真心不能接受大屏手机，准备 iPhone SE（第 2 代）和 iPhone 12 mini 两款手机战 6 年，到停止更新。 我可以接受单卡，可以接受续航不好带充电宝，两年左右会去官方换电池的，可以做到不玩任何游戏，小屏看视频可以接受，60Hz 屏幕、 20W 充电也都可以接受，就是想问问 iPhone 12 mini 到底能不能用 6 年的时间，真的是非常纠结要不要买 iPhone 12 mini。',
    hot: '177 万热度',
    imgUrl:
        'https://pic2.zhimg.com/50/v2-3bd6331fd9001427ba27040963c3a73d_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '为什么刘备伐吴全军覆没，并且落荒而逃不用被斩首，而马谡街亭惨败，却被斩首了？',
    description: '',
    hot: '175 万热度',
  ),
  ZhiHuBillboardModel(
    title: '川渝人为什么狂吃不胖呢？',
    description:
        '作为去过一次重庆的南方人，深有感受，重庆人皮肤真的特别好，胖的人的确也不咋多，但他们的微辣真实受不了，吃过一次后，到哪都是找些粤菜，那为什么火锅店还配冰棍呢？',
    hot: '171 万热度',
    imgUrl:
        'https://pic4.zhimg.com/50/v2-d39cd3f8c2edfb1f9fbea3eb87d6ca6d_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '大学期间，收入已经达到一个可观的水平，还需要好好学专业课吗？',
    description:
        '我蛮迷茫的… 现在大二，靠着写网络小说兼职大概两三万的样子，就算断更 吃老书剩饭的情况下也有个三四千。 可是负面问题也有。 就是学业问题。 虽然平时除了码字、扫榜以外，也会读一读各种类型的经典书籍。 但是本职专业会计却一落千丈。 没有精力 + 不感兴趣 + 自小时候以来的厌学情节。 总之，是一塌糊涂。 刚刚大二，就已经挂了 5 门专业课。 可周围的朋友、同学却大多都是很用功的孩子。 他们也在劝我诸如：不要不务正业，写小说写不了一辈子，到了大学不学习为什么要考大学等等… 我很困扰。 求助各位大神',
    hot: '170 万热度',
    imgUrl:
        'https://pic3.zhimg.com/50/v2-cd699a43fbbc0f11bb73e5208ee3b1bf_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '微积分体系几百年前就建立起来了，为什么我们现在学习它仍存在困难？',
    description:
        '本人大一 在高三的时候阅读物理课本 对整个物理体系的建立 各种概念的定义 定理之间的联系有很大兴趣 非常喜欢了解各位科学家的一些研究过程 常常惊叹于各位科学家的伟大的思路 如今步入大学 初次接触高等教育 仅在高数一科的学习中就觉得磕磕绊绊 学不明白的感觉 因此就常常思考一个问题，微积分体系早已在几百年前已经建立起来，然而几百年后我们大学生只是仅仅地学习这个体系的时候，还会出现很多困难 明显创建体系比熟悉学习体系难度大多了 但牛顿 莱布尼茨那些伟大的科学家们 也不是天生就想着去建立微积分？建立体系吧？ 所以这究竟是人与人智力上的绝对差异 还是与教育体系有关？ 毕竟刚入大学 才疏学浅 如有表述不当的地方 尽请谅解！',
    hot: '169 万热度',
    imgUrl:
        'https://pic2.zhimg.com/v2-b773645496f336e76ac82b26fd23aacf_1440w.jpg?source=172ae18b',
  ),
  ZhiHuBillboardModel(
    title: '民法典继承新规即将实行，侄子侄女可继承叔伯遗产，会产生哪些影响？',
    description:
        '《中华人民共和国民法典》2021 年 1 月 1 日正式实施，其对遗产继承也作出了不少新规定。其中，对没有第一、第二合法有效继承人的家庭，新规增加了有效继承人的范围——当被继承人的兄弟姐妹先于被继承人死亡的，由被继承人兄弟姐妹的子女，也就是外甥、外甥女、侄儿、侄女代位继承。民法典继承新规即将实行，侄子侄女可代位继承叔伯遗产',
    hot: '165 万热度',
  ),
  ZhiHuBillboardModel(
    title: '英雄联盟 LoL 是不是正在抛弃老玩家?',
    description:
        '作为 S1 到现在的老玩家，家庭工作已经致使我们没有时间去太多的练习，这次更新，我到现在都认不清。导致经常会坑，所以我不会去排位，都在人机玩两把，直接去匹配。一定遇到熟练度高的难免会被虐。一直以娱乐为主，一般遇到非常认真且玩自己熟练度高的玩家就会被喷的很厉害。怎么说呢，匹配不是娱乐吗？我可能因为上赛季打得不错，然后匹配到的人和我现在的实力根本不在一个档次！难道我要练人机一直到可以匹配回来为止吗？这么劝退的吗？特别是哪些玩家，我从来不喷人。匹配娱乐犯不着啊。那么认真去排位不好吗 ？ 有没有解决办法？',
    hot: '164 万热度',
    imgUrl:
        'https://pic1.zhimg.com/50/v2-8b8f5f162d6023659d78517e956fed24_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '哪一瞬间你觉得自己和男朋友三观很不合你很想有分手的冲动？',
    description:
        '我和我男朋友异地恋，很艰辛。在一起七八个月了。我和他相距一千多公里，火车十几个小时。我去看过他三次。他来看我零次。因为我还在读书所以假期多，他去年毕业了，工作比较忙点，我理解。我们总是因为他玩游戏不理我，他和兄弟聊嗨不理我，他出去浪没告诉我，他和女生去看电影等等的事情而吵架。甚至闹分手。每一次吵闹，想要所有的解释，他都没有给我回复过，每一次都是一句晚安，带过了所有，过了第二天也并不会给我任何解释。我所有的伤心难过感觉都是自己作出来的…很难受那种感觉，一千个一万个想要他哄，但实际上一个字都没有。也不知道自己为什么没有离开，可能是还有一丝留恋。但在他眼里我是为了钱而在一起，我买护肤品，化妆品，我说我买的都是奢侈品。还记得第一次去找他，去年冬天，我坐飞机过去看他，因为吵架了，他没有来接我，在那个陌生的城市晚上一个人从机场坐地铁出去找地方住，很无助，很迷茫，一个人冬天下着雨拖着一个行李箱找酒店，很狼狈，那天晚上到了酒店我买了去另外一个城市的火车票。给他的答复是第二天坐最早的车来找我，就算过去了吧。第二天我退房离开了，他没有来，一个人出去找早餐吃准备离开，在我走了很长一段路，到了步行街，他才过来找我，心软的我，当然还是把这件事翻篇了。还记得每一次见面他答应给我买化妆品护肤品（当然这是说说而已，女孩纸就不要当真），他说都会给我，最后当然都是空话。这么久以来，还记得他情人节给我说，他给我的情人节礼物给我买面膜，当然最后也没有。上两个星期我说我没有面膜了，他勉强发了两百块红包给我买面膜。可能这是这么久以来他给我的第一件礼物。女孩无非想要点小惊喜，小礼物，哄一哄。四月份他生日我给他买了鞋子和一个夏天小风扇怕他经常出汗爬楼梯太热，那会也吵架了。他给过的承诺太多太多，但是我没看到有一个是能够好好兑现过的，既然给不了我为什么要给我希望…四月答应说端午节来我的城市看我，但是前段时间说他不来了，当然我很生气，非常伤心，更多的是觉得他为什么不能来看我一次，哪怕一次跟我在校园里走走。最后还是因为吵架了，所以他买了，但是实属无奈，并且很不情愿。我觉得自己爱的挺卑微的。',
    hot: '158 万热度',
    imgUrl:
        'https://pic3.zhimg.com/50/v2-72cd7bcab78287b49d99ccc45ce850ad_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '部分人持「不生小孩，靠本应用养孩子的钱来养老」的观点，这笔钱真的够养老吗？',
    description:
        '现在的养老金是要年轻人工作交社保来支付的，那要是年轻人过少，会不会无法周转？ 其次，劳动力就只有难么多，都不生小孩，劳动力越来越少，这些年轻人真的会流入养老产业吗？有的人表示老了请护工来照顾自己，但是假如科技没什么大的突破，不能用机器人照顾老人，那么哪来那么多劳动力呢？ 还有我觉得年轻的时候工作，老了后只消费不工作有风险。我觉得是社会里的人创造的财富和消耗的财富是一个动态平衡，创造的比消耗的多的话财富就积累下来了，反之就是吃老本。那这种动态平衡有可能被打破啊，有可能你年轻的时候创造的财富被别人消耗了，你老了后没人创造财富给你消耗了怎么办？ 没有具体提条件的原因是我更期待宏观上的解答，比如说要是 10% 的人这么做了，未来社会会怎么样？如果这个数字上升到 20% 甚至是 50% 呢？假如这部分人中，不同身家的人的比例与社会总体人群一致会怎么样？假如人群分布体现出某种倾向性又会引发什么样的社会效应？',
    hot: '156 万热度',
  ),
  ZhiHuBillboardModel(
    title: '怎么向男朋友提分手？',
    description: '',
    hot: '139 万热度',
    imgUrl:
        'https://pic3.zhimg.com/50/v2-b90c376f993f0089dab240ea3a440efb_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '为什么消费者对特斯拉的容忍度可以这么高?',
    description: '甚至是行驶中天窗脱离这种闻所未闻的事发生了还是会趋之若鹜地购买。',
    hot: '139 万热度',
    imgUrl:
        'https://pic3.zhimg.com/50/v2-d4bad3aec75911412cc08e60fb86c001_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '为什么普通人逛奢侈品店心理压力这么大？',
    description: '',
    hot: '138 万热度',
    imgUrl:
        'https://pic1.zhimg.com/50/v2-2207c2f1861f487b1de663101924ee90_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '今天就是 deadline 了 教授还没交 recommendation letter，怎么办呀?',
    description:
        '我现在在申请研究生，啥都准备好了，今天就是 deadline 了，坑爹 professor 还没有交 recommendation letter，这会怎么样啊，ddl 之后提交可以吗',
    hot: '125 万热度',
  ),
  ZhiHuBillboardModel(
    title: '大家是如何看待不想谈恋爱，不想结婚，不想生孩子，只想一个人安安静静的生活？',
    description: '',
    hot: '99 万热度',
    imgUrl:
        'https://pica.zhimg.com/50/v2-22e46bed9cf9f9d8c8c0448bd4274c92_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '有没有剧本杀大佬推荐几个可玩性比较高的剧本？',
    description: '推荐一些比较有趣的剧本，不管是新本还是老本',
    hot: '98 万热度',
    imgUrl:
        'https://pic3.zhimg.com/50/v2-41b6edf6bc895589b2bc14f95d4cded9_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '怎样成为一个气质的女生？',
    description: '',
    hot: '85 万热度',
    imgUrl:
        'https://pic1.zhimg.com/50/v2-1716c4ffe47e777e270640abcc02f3f7_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '特斯拉引领了高端新能源汽车销量，也带动了我国新能源汽车产业发展，你如何评价特斯拉进入中国这一现象？',
    description: '今年以来，特斯拉取得了高销量，也被我国新能源汽车产业的快速发展而带动，你如何评价特斯拉进入中国这一现象？',
    hot: '83 万热度',
    imgUrl:
        'https://pica.zhimg.com/50/v2-556d58868579cb2dcc8c8dc9a6e71ccb_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '若干年后日语会完全片假名化、外来语化吗？',
    description:
        '感觉日本的年轻人好喜欢使用片假名和外来语啊。许多日语本来就有的词汇也倾向于使用这二者来表达。那么过了若干年，日语会不会完全外来语化、片假名化呢？',
    hot: '77 万热度',
    imgUrl: 'https://picb.zhimg.com/50/2459d593b99761c56a6fac6ea4224e95_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '月薪工资 7000，每月只花 1000-1500，和月薪过万，每月月光族有啥不一样的感觉？',
    description:
        '我，97 武汉土著，毕业一年，有房无车，公司私企质量技术部，月薪 7000，包吃包住，每月月花 1000 — 1500，偶尔吃喝多一点会过 2000，一年下来虽说不富裕也可以攒 6-7 万，我同学月薪过万，除开房租水电费，交通费，应酬钱每个月所剩无几，我有点羡慕他纸醉金迷的生活，但我还是想好好攒钱，未来买个车，然后再去提高自己的生活质量…',
    hot: '77 万热度',
    imgUrl:
        'https://pic2.zhimg.com/50/v2-fe3b63e85beb43bd5f20bdd9279cdadd_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '对孕妇来说剖腹产遭罪还是顺产遭罪？',
    description: '',
    hot: '71 万热度',
    imgUrl:
        'https://pic4.zhimg.com/50/v2-e407a3b4c94baf6418c760382128e059_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '如何购买一只健康的金毛幼崽？',
    description: '妹纸我准备在今年年末添加一个家庭新成员，但对于购买狗狗一些知识不太了解，请问购买一只健康的金毛宝宝要注意些什么？谢谢～',
    hot: '68 万热度',
    imgUrl:
        'https://pica.zhimg.com/50/v2-315080ce1144a0139726e687027b5219_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '思文离婚后在《送一百位女孩回家》说婚姻不幸才是正常，你怎么看？原生家庭对亲密关系影响究竟有多大？',
    description: '',
    hot: '65 万热度',
    imgUrl:
        'https://pic2.zhimg.com/50/v2-c67338c255835b971581304d1d15a456_b.jpg',
  ),
  ZhiHuBillboardModel(
    title: '分开很久后还能重新在一起吗？',
    description:
        '我和她是 17 年夏天认识的，到前一段 9.1 分开。异地，在一起三年多，感情和相处和兴趣爱好还有喜欢的东西什么的都很融洽，也很合拍。三年时间中间一年我是和她在她的城市租房子同居了一年，后来我回家了，然后疫情结束后四月多又跑去和她租房住，到九月多，我俩都很爱很爱对方，都想和对方结婚，她说起未来的生活也包含我。就是有个问题，我高中毕业后就进入社会了，她是大学毕业，学历上差很多，分手前一两个月吧，我俩聊天越来越少，因为工作都很忙，回到家她还要忙工作，我也不能打扰她。交流变得很少，因为学历问题，有时候她说的一些东西我都听不懂，我说的她觉得没意思。我们中间就有了一层屏障，她之前去哪里玩都是我陪着，后来她总会在晚上自己去吃吃饭，逛一逛，散散心。之前她下班我都是去接她陪她一起回去，后来不让我去接她了，再后来我看时间太晚去接她，她会故意从后门或者别的地方先回去，然后假装没碰到我，9.1 那天晚上跟我提了分手，说让我回去考成人高考，考研究生考公务员，提升自己，等到提升自己了以后再来找她，还说到时候有之前的感情基础，还会再选择我，我知道她说的对，如果以后想结婚，很多东西都要考虑，要给她一个好的生活，所以我也同意了，后来我们就分手了，我回家学习考试健身。但是我还是很想她，现在每天晚上都睡不着，看之前的聊天记录，看她的各种社交软件动态。我不太爱说话，在家里也基本不说话，现在感觉自己每天都很焦虑烦躁，一想到要好久都见不到就很烦躁难受，我都想要去看心理医生，我不知道该怎么改变自己的想法和心态。 还有就是这个提升自己的想法是她提出的，在我们分手前一个月差不多提出的，所以我当时下了班就会去学习，或者看一些文章提升自己的知识面。 还有就是分开前几天晚上她情绪都不是很好，有时候会偷偷的哭，我就问她怎么回事，她哭着抱着我说她真的很想很想和我结婚，要我一定要好好努力，我当时真的特难受，也很坚定要好好努力。希望大家提一些建议，我会好好听取的 又想到一些事情，就是在她把我联系方式都删掉的时候，对我说让我去追求属于自己的幸福，不要在她身上浪费时间了。但是我自己是希望现在好好的去提升自己，等以后再去重新追求她 再补充一些吧，就是当时 9.1 分手的，然后我 9.5 回得家，中间有几天都还是继续跟她住在一起，晚上也会抱着她睡觉，我那几天也一直都在跟她说我不想分手，能不能不分手，我会好好提升自己好好努力，但是她说她不想谈恋爱了，跟我也不想。她说她太累了，分开了以后一年之内是不会再谈恋爱了，但是不会跟我保证两年或者三年之内不会谈，当时听她这样说，我也没再多说什么了，然后到了晚上，我又说起这个事情，还是说自己不想分手，然后她就说你想让我那么累吗？，我就说不想，后来我们就没再说这个话题了，我觉得我俩分手很大一部分原因是跟我在一起让她觉得很心累吧。抱歉写的很乱，影响大家观感了 首先感谢各位的回复和建议，我是能接受任何建议的人。我自己也接受了我俩已经结束了的事实。她会对我越来越冷淡。我们会变成陌生人，她的温柔和爱都不会再给我一分。我去提升自己，去学习和健身，为的是自己也不是为了她。我们已经没关系了。在这之前，我总会为几年以后还能不能和她再有些交集而烦恼烦躁。我总是想，如果我俩再也见不到了，那该多糟糕。但是还好，我还有和她一起养的一只猫陪着我。猫咪会一直粘着我，陪着我。而我也会好好的爱自己。好好的提升自己。 我还是有些不甘心，我从没想过我俩会分开，我以后我可以和她一直在一起，很可惜。但我尊重她的选择和决定。 还是很感谢大家的回复和建议。谢谢各位 人总是会给回忆搞上一层滤镜啊，我回想起坐火车坐高铁的时候感觉窗外的阳光都变得很温暖，温柔，下午三四点在火车上看着窗外的景色向后退去。耳机里传来的音乐带着车厢里嘈杂的声音。坐上五六个小时的火车。疲惫劳累。但是很开心。我之前还以为自己是喜欢坐火车到处逛。后来我发现，其实我不是喜欢坐火车。我是喜欢每次去找她的时候，在路上的那种感觉。对见面的期待，对她的想念。马上就能见到她的开心。各种情绪混合在一起，让坐火车的劳累和腰酸背痛烟消云散。还带上些浪漫气息。随便写一些什么东西，要说真的放下的怎么可能呢，每次想她的时候我就告诉自己， I don\'t care，这样会让我好受些。就这样吧',
    hot: '65 万热度',
  ),
];

// 热映电影
List<HotMovieModel> hotMovieModelData = [
  HotMovieModel(
    name: '紧急救援',
    score: 9.1,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/O1CN01sofgJl1zBemFBMHPv_!!6000000006676-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：林超贤',
      actors: '主演：彭于晏,王彦霖,辛芷蕾,蓝盈莹,王雨甜',
      type: '类型：动作,灾难',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：134分钟',
    ),
  ),
  HotMovieModel(
    name: '沐浴之王',
    score: 8.7,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN01TcGCQR1UirP1kMz4N_!!6000000002552-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：易小星',
      actors: '主演：彭昱畅,乔杉,卜冠今,苇青,金世佳',
      type: '类型：喜剧,动作',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：103分钟',
    ),
  ),
  HotMovieModel(
    name: '神奇女侠1984',
    score: 7.8,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/O1CN016VnA3e1y2fO2DrDDX_!!6000000006521-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：派蒂·杰金斯',
      actors: '主演：盖尔·加朵,克里斯·派恩,克里斯汀·韦格,佩德罗·帕斯卡,罗宾·怀特,康妮·尼尔森',
      type: '类型：动作,奇幻,冒险',
      area: '地区：美国',
      language: '语言：英语',
      time: '片长：151分钟',
    ),
  ),
  HotMovieModel(
    name: '拆弹专家2',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/TB11SA1VWL7gK0jSZFBXXXZZpXa_.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：邱礼涛',
      actors:
          '主演：刘德华,刘青云,倪妮,谢君豪,姜皓文,吴卓羲,马浴柯,黄德斌,郑子诚,洪天明,袁富华,刘浩龙,凌文龙,赵永洪,蔡瀚亿,张竣杰,张扬',
      type: '类型：动作,犯罪',
      area: '地区：中国香港,中国大陆',
      language: '语言：粤语,汉语普通话',
      time: '片长：121分钟',
    ),
  ),
  HotMovieModel(
    name: '晴雅集',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i1/O1CN01hWCLkF1ujTx8c52HG_!!6000000006073-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：郭敬明',
      actors: '主演：赵又廷,邓伦,王子文,春夏,汪铎',
      type: '类型：奇幻,爱情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：132分钟',
    ),
  ),
  HotMovieModel(
    name: '明天你是否依然爱我',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/O1CN0186Mk6g1VxLY15Jbvw_!!6000000002719-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：周楠',
      actors: '主演：杨颖,李鸿其,黄柏钧',
      type: '类型：爱情,剧情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：99分钟',
    ),
  ),
  HotMovieModel(
    name: '如果声音不记得',
    score: 7.8,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN01e7equ81QgKkCc2eaQ_!!6000000002005-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：落落',
      actors: '主演：章若楠,孙晨竣,王彦霖,严屹宽,左小青,张瑶,郭姝彤',
      type: '类型：爱情,奇幻',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：102分钟',
    ),
  ),
  HotMovieModel(
    name: '送你一朵小红花',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/TB1v6V0g9R26e4jSZFEXXbwuXXa_.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：韩延',
      actors: '主演：易烊千玺,刘浩存,朱媛媛,高亚麟',
      type: '类型：剧情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：128分钟',
    ),
  ),
  HotMovieModel(
    name: '疯狂原始人2',
    score: 8.9,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/O1CN01V7jPEM1jWEiaAi4p0_!!6000000004555-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：乔尔·克劳福德',
      actors: '主演：尼古拉斯·凯奇,艾玛·斯通,瑞安·雷诺兹,凯瑟琳·基纳',
      type: '类型：动画,喜剧',
      area: '地区：美国',
      language: '语言：英语',
      time: '片长：96分钟',
    ),
  ),
  HotMovieModel(
    name: '温暖的抱抱',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i1/TB1GL0TSUz1gK0jSZLeXXb9kVXa_.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：常远',
      actors: '主演：常远,李沁,沈腾,乔杉',
      type: '类型：喜剧',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：112分钟',
    ),
  ),
  HotMovieModel(
    name: '猎杀T34',
    score: 9.1,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/O1CN01RCUyIu1pA9JbDcrc3_!!6000000005319-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：阿列克赛·西多洛夫',
      actors: '主演：亚历山大·佩特罗夫,文森兹·凯弗,伊琳娜·斯达申鲍姆,维克多·多勃朗拉沃夫,尤里·鲍里索夫',
      type: '类型：动作,历史,战争',
      area: '地区：俄罗斯',
      language: '语言：俄语',
      time: '片长：126分钟',
    ),
  ),
  HotMovieModel(
    name: '哆啦A梦：大雄的新恐龙',
    score: 8.8,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN01ADMjEO1XRP93tT6PK_!!6000000002920-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：今井一晓',
      actors: '主演：水田山葵,关智一,木村昴,大原惠美,嘉数由美',
      type: '类型：动画,剧情,冒险',
      area: '地区：日本',
      language: '语言：日语',
      time: '片长：111分钟',
    ),
  ),
  HotMovieModel(
    name: '光语者',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN01AQ66hn1RR39SOZyBX_!!6000000002107-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：孙辉,冯冯,杨紫云,周全',
      actors: '主演：刘杨',
      type: '类型：纪录片',
      area: '地区：中国大陆',
      language: '语言：汉语普通话,英语,挪威语',
      time: '片长：97分钟',
    ),
  ),
  HotMovieModel(
    name: '棒！少年',
    score: 9.1,
    url:
        'https://img.alicdn.com/bao/uploaded/i1/O1CN011j0Fml1PUaz8l75ys_!!6000000001844-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：许慧晶',
      actors: '主演：马虎,梁正双,张锦新,孙岭峰,郭忠健',
      type: '类型：纪录片',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：108分钟',
    ),
  ),
  HotMovieModel(
    name: '心灵奇旅',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN01rZi5il1tJ5VNjCDah_!!6000000005880-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：彼特·道格特, 坎普·鲍尔斯',
      actors: '主演：杰米·福克斯,蒂娜·菲,约翰·拉岑贝格,戴维德·迪格斯',
      type: '类型：动画,冒险,喜剧',
      area: '地区：美国',
      language: '语言：英语',
      time: '片长：101分钟',
    ),
  ),
  HotMovieModel(
    name: '崖上的波妞',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN01pvsQhM1mRbZ4MkD81_!!6000000004951-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：宫崎骏',
      actors: '主演：奈良柚莉爱,土井洋辉,山口智子,长岛一茂,天海佑希',
      type: '类型：动画,冒险',
      area: '地区：日本',
      language: '语言：日语',
      time: '片长：101分钟',
    ),
  ),
  HotMovieModel(
    name: '隐形人',
    score: 8.3,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN019zb6o31bCWkCkKRIU_!!6000000003429-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：雷·沃纳尔',
      actors: '主演：奥利弗·杰森-科恩,伊丽莎白·莫斯,哈丽特·戴尔,阿尔迪斯·霍吉,斯托姆·瑞德',
      type: '类型：科幻,惊悚,恐怖',
      area: '地区：美国',
      language: '语言：英语',
      time: '片长：124分钟',
    ),
  ),
  HotMovieModel(
    name: '除暴',
    score: 8.6,
    url:
        'https://img.alicdn.com/bao/uploaded/i1/O1CN01yhU3BV1EMqVS8Jqef_!!6000000000338-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：刘浩良',
      actors: '主演：王千源,吴彦祖,春夏,卫诗雅',
      type: '类型：犯罪,剧情,动作',
      area: '地区：中国大陆,中国香港',
      language: '语言：汉语普通话,粤语',
      time: '片长：95分钟',
    ),
  ),
  HotMovieModel(
    name: '赤狐书生',
    score: 7.5,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/O1CN01tpn3Hr1n7k05AGAEX_!!6000000005043-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：宋灏霖, 伊力奇',
      actors: '主演：陈立农,李现,哈妮克孜,裴魁山,姜超,张晨光,李晓川,王耀庆,杨紫',
      type: '类型：奇幻,古装,喜剧',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：125分钟',
    ),
  ),
  HotMovieModel(
    name: '城市猎人',
    score: 8.1,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/O1CN01mxcd9Q1D9HA6JulqZ_!!6000000000173-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：菲利普·拉肖',
      actors: '主演：菲利普·拉肖,艾罗娣·方坦,塔雷克·布达里,朱利安·阿鲁蒂',
      type: '类型：喜剧,动作,爱情',
      area: '地区：法国',
      language: '语言：法语',
      time: '片长：89分钟',
    ),
  ),
  HotMovieModel(
    name: '宝可梦：超梦的逆袭 进化',
    score: 8.3,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/O1CN01Q6CV6h1mkqBwCY4yP_!!6000000004993-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：汤山邦彦, 榊原幹典',
      actors: '主演：松本梨香,大谷育江,市村正亲,饭冢雅弓',
      type: '类型：动作,动画,家庭',
      area: '地区：日本',
      language: '语言：日语',
      time: '片长：97分钟',
    ),
  ),
  HotMovieModel(
    name: '封口者',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i1/O1CN01rkvEHb28Mx5FzUNH3_!!6000000007919-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：蔡明',
      actors: '主演：左溢,安宁,马翰,裴筝筝',
      type: '类型：爱情,悬疑,惊悚',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：94分钟',
    ),
  ),
  HotMovieModel(
    name: '一秒钟',
    score: 8.3,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/O1CN01umZKX91JW4ZUAdLOK_!!6000000001035-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：张艺谋',
      actors: '主演：张译,刘浩存,范伟,余皑磊,张邵勃',
      type: '类型：剧情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：104分钟',
    ),
  ),
  HotMovieModel(
    name: '胡柚娃',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/TB1Il9wWuH2gK0jSZJnXXaT1FXa_.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：周一愚, 徐祖明',
      actors: '主演：',
      type: '类型：剧情,动画',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：82分钟',
    ),
  ),
  HotMovieModel(
    name: '少女佳禾',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/O1CN01Ny29FB20YO387i0OS_!!6000000006861-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：周笋',
      actors: '主演：邓恩熙,李感',
      type: '类型：剧情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：100分钟',
    ),
  ),
  HotMovieModel(
    name: '金刚川',
    score: 9.5,
    url:
        'https://img.alicdn.com/bao/uploaded/i1/O1CN01pB8JTt1E1mHTDBrw1_!!6000000000292-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：管虎, 郭帆, 路阳, 田羽生',
      actors: '主演：张译,吴京,李九霄,魏晨,邓超,邱天,周思羽',
      type: '类型：剧情,历史,战争',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：122分钟',
    ),
  ),
  HotMovieModel(
    name: '剩女觅爱记',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/O1CN01CsmiZe1Zs5STIeoHp_!!6000000003249-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：史震飞',
      actors: '主演：秦雅思,孟翔,吴海棠,张净桐',
      type: '类型：爱情,喜剧',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：90分钟',
    ),
  ),
  HotMovieModel(
    name: '奇妙王国之魔法奇缘',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/O1CN01vhKsRx20iSkxqGZgS_!!6000000006883-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：陈设',
      actors: '主演：卢瑶,张洋,陈新玥',
      type: '类型：动画,冒险,家庭',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：79分钟',
    ),
  ),
  HotMovieModel(
    name: '野性的呼唤',
    score: 9.0,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN01tbQl4m1EiN7QSdXns_!!6000000000385-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：克里斯·桑德斯',
      actors: '主演：哈里森·福特,丹·史蒂文斯,凯伦·吉兰,布莱德利·惠特福德',
      type: '类型：冒险,剧情',
      area: '地区：美国,加拿大',
      language: '语言：英语,法语',
      time: '片长：100分钟',
    ),
  ),
  HotMovieModel(
    name: '汪汪队立大功之超能救援',
    score: 8.4,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/O1CN01aRAOmp247bLK2HpHG_!!6000000007344-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：安德鲁·斯特里梅迪斯',
      actors: '主演：杨鸥,韩娇娇,李敏妍,王晓彤,骆妍倩,张安琪,张琦',
      type: '类型：动画,儿童,冒险',
      area: '地区：加拿大,美国',
      language: '语言：英语',
      time: '片长：89分钟',
    ),
  ),
  HotMovieModel(
    name: '闺蜜心窍',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i1/TB18bKHmBBh1e4jSZFhXXcC9VXa_.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：',
      actors: '主演：金晨,姜潮,朱璇,王美人',
      type: '类型：恐怖',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：88分钟',
    ),
  ),
  HotMovieModel(
    name: '钱在囧途',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i1/O1CN01Gmdlmc1xDpQLA6wEP_!!6000000006410-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：侯懿洋',
      actors: '主演：林雪,巴多,连晋,董立范,彭波',
      type: '类型：喜剧,动作',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：88分钟',
    ),
  ),
  HotMovieModel(
    name: '日光之下',
    score: 7.6,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/O1CN01COpGuI1f8BSNW9qLk_!!6000000003961-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：梁鸣',
      actors: '主演：吕星辰,吴晓亮,王佳佳,王维申',
      type: '类型：剧情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：104分钟',
    ),
  ),
  HotMovieModel(
    name: '太空熊猫英雄诞生',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/O1CN01cFENVa1gSckdRXpnm_!!6000000004141-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：李杨, 陈磊',
      actors: '主演：唐泽宗,郑方,王雪沁,苏旖旎,张成杰,程振坤',
      type: '类型：动画,冒险,喜剧',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：77分钟',
    ),
  ),
  HotMovieModel(
    name: '末日逃生',
    score: 7.9,
    url:
        'https://img.alicdn.com/bao/uploaded/i1/O1CN01KnqRxT1C9u5H0qBcp_!!6000000000039-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：里克·罗曼·沃夫',
      actors: '主演：杰拉德·巴特勒,莫瑞娜·巴卡琳,大卫·丹曼,霍普·戴维斯',
      type: '类型：灾难,动作,剧情',
      area: '地区：美国,英国',
      language: '语言：英语',
      time: '片长：120分钟',
    ),
  ),
  HotMovieModel(
    name: '网络凶铃',
    score: 6.6,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/TB1fNgVkmslXu8jSZFuXXXg7FXa_.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：鹤田法男',
      actors: '主演：孙伊涵,张云亭,傅孟柏,韩朴俊,王嫚笛',
      type: '类型：惊悚,恐怖',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：95分钟',
    ),
  ),
  HotMovieModel(
    name: '祝福',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/TB16vEQRFT7gK0jSZFpXXaTkpXa_.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：桑弧',
      actors: '主演：白杨,邸力,李景波,史林,管宗祥',
      type: '类型：剧情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：98分钟',
    ),
  ),
  HotMovieModel(
    name: '乌鸦与麻雀',
    score: 9.0,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN01OpiPgZ1S7dz9T2aUw_!!6000000002200-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：郑君里',
      actors: '主演：赵丹,上官云珠,孙道临,李天济,黄宗英',
      type: '类型：剧情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：106分钟',
    ),
  ),
  HotMovieModel(
    name: '龙须沟',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/O1CN01sjY2LA1i9VS0iwtlE_!!6000000004370-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：冼群',
      actors: '主演：于是之,叶仲寅,张伐,于蓝',
      type: '类型：剧情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：108分钟',
    ),
  ),
  HotMovieModel(
    name: '掬水月在手',
    score: 9.0,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/TB17uOzkyDsXe8jSZR0XXXK6FXa_.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：陈传兴',
      actors: '主演：叶嘉莹',
      type: '类型：传记,纪录片',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：120分钟',
    ),
  ),
  HotMovieModel(
    name: '早春二月',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN01zj6SIR1OGZEsYRH55_!!6000000001678-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：谢铁骊',
      actors: '主演：孙道临,谢芳,上官云珠,高博',
      type: '类型：剧情,爱情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：120分钟',
    ),
  ),
  HotMovieModel(
    name: '流浪地球：飞跃2020特别版',
    score: 9.2,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/O1CN01OdOgDV1aVvuldt39n_!!6000000003336-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：郭帆',
      actors: '主演：吴京,屈楚萧,李光洁,吴孟达,赵今麦,屈菁菁,张亦驰,杨皓宇,李虹辰,杨轶,姜志刚,张欢',
      type: '类型：剧情,科幻',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：137分钟',
    ),
  ),
  HotMovieModel(
    name: '海底小纵队：火焰之环',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN01Oyfulm23mX7wDdUes_!!6000000007298-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：布莱尔.西蒙斯, 周沁',
      actors: '主演：郭盛,苏俣,方宇',
      type: '类型：奇幻,冒险',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：78分钟',
    ),
  ),
  HotMovieModel(
    name: '英雄儿女',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/TB1eXc5bFY7gK0jSZKzXXaikpXa_.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：武兆堤',
      actors: '主演：田方,周文彬,刘尚娴',
      type: '类型：剧情,战争',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：113分钟',
    ),
  ),
  HotMovieModel(
    name: '上甘岭',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/TB1Vps8bKH2gK0jSZFEXXcqMpXa_.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：沙蒙, 林杉',
      actors: '主演：高保成,徐林格,刘玉茹,张良,刘磊',
      type: '类型：剧情,战争',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：126分钟',
    ),
  ),
  HotMovieModel(
    name: '五朵金花',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i3/O1CN013C1yGE1hYPMvyQ3oC_!!6000000004289-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：王家乙',
      actors: '主演：杨丽坤,莫梓江,孙静贞,谭尧中,王苏娅',
      type: '类型：爱情,歌舞',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：105分钟',
    ),
  ),
  HotMovieModel(
    name: '枯木逢春',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/O1CN01hwxKmQ1sSsMH6OAP4_!!6000000005766-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：郑君里',
      actors: '主演：尤嘉,徐志骅,上官云珠',
      type: '类型：剧情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：99分钟',
    ),
  ),
  HotMovieModel(
    name: '锦上添花',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i4/O1CN014OYBRk28TMdNYxWPJ_!!6000000007933-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：谢添, 陈方千, 吴国光',
      actors: '主演：韩非,赵子岳,田烈,凌元',
      type: '类型：剧情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：71分钟',
    ),
  ),
  HotMovieModel(
    name: '李双双',
    score: 7.3,
    url:
        'https://img.alicdn.com/bao/uploaded/i2/TB1_YqXaLWG3KVjSZFPXXXaiXXa_.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：鲁韧',
      actors: '主演：张瑞芳,仲星火,张文蓉,李康尔',
      type: '类型：剧情',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：98分钟',
    ),
  ),
  HotMovieModel(
    name: '小破孩大状元',
    score: 0,
    url:
        'https://img.alicdn.com/bao/uploaded/i1/O1CN01IsS6vh27Qmn2LqdXI_!!6000000007792-0-alipicbeacon.jpg_160x240.jpg',
    info: HotMovieInfoModel(
      auth: '导演：拾荒, 郑成峰',
      actors: '主演：',
      type: '类型：喜剧,动画,奇幻',
      area: '地区：中国大陆',
      language: '语言：汉语普通话',
      time: '片长：86分钟',
    ),
  ),
];
