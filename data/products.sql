SET NAMES UTF8;
USE bamboo;
DROP TABLE IF EXISTS bamboo_products;
CREATE TABLE bamboo_products (
    pid INT PRIMARY KEY AUTO_INCREMENT,
    ptitle VARCHAR(20) NOT NULL DEFAULT '',
    ptime   VARCHAR(20) NOT NULL DEFAULT '',
    psubtitle VARCHAR(128) NOT NULL DEFAULT '',
    step1 VARCHAR(128) NOT NULL DEFAULT '',
    step2 VARCHAR(128) NOT NULL DEFAULT '',
    step3 VARCHAR(128) NOT NULL DEFAULT '',
    step4 VARCHAR(128) NOT NULL DEFAULT '',
    step5 VARCHAR(128) NOT NULL DEFAULT '',
    main_pic VARCHAR(128) NOT NULL DEFAULT ''
);
INSERT INTO bamboo_products VALUES(
    null,
    '全麦煎蛋三明治',
    '15min',
    '早餐不知道吃什么？来个三明治吧，两片面包中加入鸡蛋和各种蔬菜，既吃得饱又吃得好。',
    '不粘锅预热，将鸡蛋打入，两面煎熟后取出备用。',
    '将西红柿切片，生菜洗净备用。',
    '在吐司面包中依次夹入生菜、鸡蛋、奶酪。',
    '用刀从中间切成两份，三明治就做好了。',
    '',
    'img/diet/quanmai/main.jpg'
);
INSERT INTO bamboo_products VALUES(
    null,
    '鸡肉卷',
    '75min',
    '提供优质蛋白的鸡肉，大量的蔬菜提供了足够的饱腹感，用饼皮包裹好，一口吃下所有的幸福。',
    '将鸡胸肉洗净切成 1cm 左右厚片，撒入咖喱粉、辣椒粉、黑胡椒、柠檬汁后充分混合，静置腌制 1 小时。',
    '煎锅预热并加入少量橄榄油，将鸡肉煎至两面金黄后出锅。',
    '香煎鸡胸切成细条，甜椒、黄瓜切丝，生菜洗净。',
    '将生菜铺在卷饼上，依次放上甜椒、香煎鸡胸，卷起即可。',
    '如此，鸡肉卷就做好了。',
    'img/diet/jiroujuan/main.jpg'
);
INSERT INTO bamboo_products VALUES(
    null,
    '奶酪黄瓜三明治',
    '10min',
    '奶酪是一种营养密度非常高的食物，在两片面包中夹上一片奶酪和腌过的黄瓜，简单却很好吃。',
    '黄瓜切片，淋少许白醋、黑胡椒腌制几分钟。',
    '吐司切去四边。',
    '将黄瓜片、芝士依次夹入吐司后切成小块即可。',
    '奶酪黄瓜三明治就做好了。',
    '',
    'img/diet/nailaohuanggua/main.jpg'
);
INSERT INTO bamboo_products VALUES(
    null,
    '紫薯蛋卷',
    '30min',
    '紫薯泥被金黄的蛋饼包裹，泛着奶香和紫薯独特的香味，用简单的做法，给自己一个惊喜。',
    '紫薯蒸熟捣碎，加一半牛奶搅拌成紫薯泥。',
    '鸡蛋打散，加全麦面粉、剩下的牛奶和少许盐调成面糊。',
    '平底锅预热，抹一层油，倒入蛋液摊平。表面凝固即可离火，将紫薯泥铺在蛋饼上，将蛋饼卷起，切块装盘即可。',
    '紫薯蛋卷就做好了。',
    '',
    'img/diet/zishu/main.jpg'
);
INSERT INTO bamboo_products VALUES(
    null,
    '鹰嘴豆素食便当',
    '10min',
    '鹰嘴豆做成泥，让素食者也能享受美味的三明治。',
    '鹰嘴豆提前浸泡一夜，次日煮烂滤水备用。',
    '加入花生酱、现磨黑胡椒、盐和橄榄油，搅打成细腻的泥状。',
    '将洋葱煎熟后，与番茄、菠菜一起备用。',
    '面包片涂抹鹰嘴豆泥，依次摆放蔬菜。',
    '对半切开，装盒即可。',
    'img/diet/yingzuidou/main.jpg'
);
INSERT INTO bamboo_products VALUES(
    null,
    '芦笋炒虾',
    '20min',
    '芦笋低糖、低脂肪、高纤维素，而且含有丰富的微量元素，搭配高蛋白的虾仁，是一道好吃又低脂的菜肴。',
    '蒜剥皮切成片，芦笋切成小段。',
    '虾仁加少许盐、黑胡椒和料酒腌制 15 分钟。',
    '平底锅预热，锅底抹少许油，爆香蒜片,倒入虾仁炒熟。',
    '倒入焯过的芦笋翻炒，出锅前加盐翻炒调味。',
    '芦笋炒虾就做好了，再撒上一点黑胡椒，味道更好哦。',
    'img/diet/lusun/main.jpg'
);
INSERT INTO bamboo_products VALUES(
    null,
    '菠萝炒饭',
    '20min',
    '一碗充满菠萝香的炒饭，糙米提供了足够的缓释碳水，青豆、胡萝卜、菠萝为炒饭提供了丰富口感。',
    '菠萝对半切开，挖空，果肉切小丁。',
    '胡萝卜切碎。',
    '炒锅预热，倒入食用油，放入胡萝卜，再放入糙米饭快速翻炒，最后加入菠萝、青豆，出锅前加入少许盐调味。',
    '将炒好的饭盛到菠萝壳内，菠萝炒饭就做好了。',
    '',
    'img/diet/boluo/main.jpg'
);
INSERT INTO bamboo_products VALUES(
    null,
    '香煎龙利鱼',
    '30min',
    '龙利鱼肉低卡高蛋白，用简单的方法就可以烹饪出美味，无论增肌还是减脂，都是理想的食材。',
    '龙利鱼洗净切大块，用厨房纸吸干水分。',
    '在鱼块的两面撒黑胡椒，少许盐腌制 15 分钟。',
    '不粘锅预热，抹一层油，热锅热油，鱼皮向下入锅，煎至鱼肉变成不透明。出锅前滴入少许柠檬汁调味即可。',
    '',
    '',
    'img/diet/longliyu/main.jpeg'
);
INSERT INTO bamboo_products VALUES(
    null,
    '快手凉拌豆腐',
    '5min',
    '富含蛋白质的盒豆腐，只需搭配一把花生，一勺酱油，就是一道快手健康菜。',
    '香葱洗净、切碎备用。',
    '将盒装内酯豆腐（嫩豆腐）取出，放入盘子内。',
    '撒上花生碎和香葱。',
    '根据喜好倒入酱油调味。',
    '完成。',
    'img/diet/doufu/main.jpg'
);
INSERT INTO bamboo_products VALUES(
    null,
    '高纤虾仁蔬菜粥',
    '50min',
    '高蛋白低脂肪的虾仁，与富含膳食纤维的糙米结合，用胡萝卜、香菇与青豌豆增加营养，一份高纤健康粥你值得拥有。',
    '将糙米浸泡过夜。',
    '将浸泡好的糙米放入锅中，倒入适量水，煮约 25 分钟，期间要经常搅动，以免粘锅',
    '虾仁洗净，倒入料酒、姜丝、黑胡椒腌制 10 分钟。',
    '糙米粥煮至粘稠后，将虾仁和蔬菜放入，继续熬煮搅动约 10 分钟。',
    '出锅前放入少许盐调味即可。',
    'img/diet/xiarenzhou/main.jpg'
);
INSERT INTO bamboo_products VALUES(
    null,
    '金牌牛油果沙拉',
    '15min',
    '年后来一个清爽又浓郁的牛油果沙拉，让你不饿肚子的情况下，在夏天之前瘦成一道“闪电”。',
    '将紫洋葱切丝，浸凉开水中20分钟去辣味。',
    '将柠檬汁、醋、柠檬汁、橄榄油混合，调成油醋汁。',
    '圣女果对半切开，菠萝切丁，黄瓜切薄片，牛油果去皮切片。',
    '把除了牛油果以外的所有食材，调入油醋汁拌匀备用。',
    '在拌好的沙拉旁放好牛油果，撒入少许盐和黑胡椒，一道金牌牛油果沙拉就做好了。',
    'img/diet/niuyouguo/main.jpg'
);
INSERT INTO bamboo_products VALUES(
    null,
    '亚洲牛肉沙拉',
    '30min',
    '沙拉是减脂期最常见的一种选择，用煎熟的瘦牛肉加上大量的新鲜蔬菜做成的沙拉，一定让你无负担的享受美味。',
    '牛肉切粒，用黑胡椒腌制15分钟以上，煎熟备用。',
    '西兰花切小朵，荷兰豆去掉两头，分别焯熟。',
    '生菜洗净，彩椒切丁。',
    '橄榄油、白醋、生抽、黑胡椒调成酱汁，倒入食材中，混合均匀后装盘。',
    '亚洲牛肉沙拉就做好了。',
    'img/diet/niuroushala/main.jpg'
);