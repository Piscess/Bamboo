SET NAMES UTF8;
USE bamboo;
CREATE TABLE bamboo_hot_products(
	hid INT PRIMARY KEY AUTO_INCREMENT,
	hname VARCHAR(32),
	hintro VARCHAR(128),
	hpic VARCHAR(128),
	href VARCHAR(128),
	breakfast INT,
	lunch INT,
	dinner INT
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"全麦煎蛋三明治",
	"早餐不知道吃什么？来个三明治吧，两片面包中加入鸡蛋和各种蔬菜，既吃得饱又吃得好。",
	"img/index_products/quanmai.jpg",
	"#",
	1,
	0,
	0
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"鸡肉卷",
	"提供优质蛋白的鸡肉，大量的蔬菜提供了足够的饱腹感，用饼皮包裹好，一口吃下所有的幸福。",
	"img/index_products/jiroujuan.jpg",
	"#",
	1,
	0,
	0
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"全麦煎蛋三明治",
	"早餐不知道吃什么？来个三明治吧，两片面包中加入鸡蛋和各种蔬菜，既吃得饱又吃得好。",
	"img/index_products/quanmai.jpg",
	"#",
	1,
	0,
	0
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"奶酪黄瓜三明治",
	"奶酪是一种营养密度非常高的食物，在两片面包中夹上一片奶酪和腌过的黄瓜，简单却很好吃。",
	"img/index_products/huanggua.jpg",
	"#",
	1,
	0,
	0
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"紫薯蛋卷",
	"紫薯泥被金黄的蛋饼包裹，泛着奶香和紫薯独特的香味，用简单的做法，给自己一个惊喜。",
	"img/index_products/zishu.jpg",
	"#",
	1,
	0,
	0
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"鹰嘴豆素食便当",
	"鹰嘴豆做成泥，让素食者也能享受美味的三明治。",
	"img/index_products/yingzuidou.jpg",
	"#",
	0,
	1,
	0
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"芦笋炒虾",
	"芦笋低糖、低脂肪、高纤维素，而且含有丰富的微量元素，搭配高蛋白的虾仁，是一道好吃又低脂的菜肴。",
	"img/index_products/lusun.jpg",
	"#",
	0,
	1,
	0
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"菠萝炒饭",
	"一碗充满菠萝香的炒饭，糙米提供了足够的缓释碳水，青豆、胡萝卜、菠萝为炒饭提供了丰富口感。",
	"img/index_products/boluo.jpg",
	"#",
	0,
	1,
	0
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"香煎龙利鱼",
	"龙利鱼肉低卡高蛋白，用简单的方法就可以烹饪出美味，无论增肌还是减脂，都是理想的食材。",
	"img/index_products/longliyu.jpg",
	"#",
	0,
	1,
	0
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"快手凉拌豆腐",
	"富含蛋白质的盒豆腐，只需搭配一把花生，一勺酱油，就是一道快手健康菜。",
	"img/index_products/doufu.jpg",
	"#",
	0,
	0,
	1
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"高纤虾仁蔬菜粥",
	"高蛋白低脂肪的虾仁，与富含膳食纤维的糙米结合，用胡萝卜、香菇与青豌豆增加营养，一份高纤健康粥你值得拥有。",
	"img/index_products/xiarou.jpg",
	"#",
	0,
	0,
	1
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"金牌牛油果沙拉",
	"年后来一个清爽又浓郁的牛油果沙拉，让你不饿肚子的情况下，在夏天之前瘦成一道“闪电”。",
	"img/index_products/niuyouguo.jpg",
	"#",
	0,
	0,
	1
);
INSERT INTO bamboo_hot_products VALUES(
	null,
	"亚洲牛肉沙拉",
	"沙拉是减脂期最常见的一种选择，用煎熟的瘦牛肉加上大量的新鲜蔬菜做成的沙拉，一定让你无负担的享受美味。",
	"img/index_products/niurou.jpg",
	"#",
	0,
	0,
	1
);