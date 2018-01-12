SET NAMES UTF8;
USE bamboo;
DROP TABLE IF EXISTS bamboo_products_pic;
CREATE TABLE bamboo_products_pic(
    picid INT PRIMARY KEY AUTO_INCREMENT,
    pid INT NOT NULL DEFAULT 0,
    main VARCHAR(128) NOT NULL DEFAULT '',
    step1_pic VARCHAR(128) NOT NULL DEFAULT '',
    step2_pic VARCHAR(128) NOT NULL DEFAULT '',
    step3_pic VARCHAR(128) NOT NULL DEFAULT '',
    step4_pic VARCHAR(128) NOT NULL DEFAULT '',
    step5_pic VARCHAR(128) NOT NULL DEFAULT ''
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    1,
    'img/diet/quanmai/main.jpg',
    'img/diet/quanmai/step1.jpg',
    'img/diet/quanmai/step2.jpg',
    'img/diet/quanmai/step3.jpg',
    'img/diet/quanmai/step4.jpg',
    ''
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    2,
    'img/diet/jiroujuan/main.jpg',
    'img/diet/jiroujuan/step1.jpeg',
    'img/diet/jiroujuan/step2.jpg',
    'img/diet/jiroujuan/step3.jpg',
    'img/diet/jiroujuan/step4.jpg',
    'img/diet/jiroujuan/step5.jpg'
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    3,
    'img/diet/nailaohuanggua/main.jpg',
    'img/diet/nailaohuanggua/step1.jpg',
    'img/diet/nailaohuanggua/step2.jpg',
    'img/diet/nailaohuanggua/step3.jpg',
    'img/diet/nailaohuanggua/step4.jpg',
    ''
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    4,
    'img/diet/zishu/main.jpg',
    'img/diet/zishu/step1.jpg',
    'img/diet/zishu/step2.jpg',
    'img/diet/zishu/step3.jpg',
    'img/diet/zishu/step4.jpg',
    ''
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    5,
    'img/diet/yingzuidou/main.jpg',
    'img/diet/yingzuidou/step1.jpg',
    'img/diet/yingzuidou/step2.jpg',
    'img/diet/yingzuidou/step3.jpg',
    'img/diet/yingzuidou/step4.jpg',
    'img/diet/yingzuidou/step5.jpg'
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    6,
    'img/diet/lusun/main.jpg',
    'img/diet/lusun/step1.jpg',
    'img/diet/lusun/step2.jpg',
    'img/diet/lusun/step3.jpg',
    'img/diet/lusun/step4.jpg',
    'img/diet/lusun/step5.jpg'
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    7,
    'img/diet/boluo/main.jpg',
    'img/diet/boluo/step1.jpg',
    'img/diet/boluo/step2.jpg',
    'img/diet/boluo/step3.jpg',
    'img/diet/boluo/step4.jpg',
    ''
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    8,
    'img/diet/longliyu/main.jpeg',
    'img/diet/longliyu/step1.jpeg',
    'img/diet/longliyu/step2.jpeg',
    'img/diet/longliyu/step3.jpeg',
    '',
    ''
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    9,
    'img/diet/doufu/main.jpg',
    'img/diet/doufu/step1.jpg',
    'img/diet/doufu/step2.jpg',
    'img/diet/doufu/step3.jpg',
    'img/diet/doufu/step4.jpg',
    'img/diet/doufu/step5.jpg'
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    10,
    'img/diet/xiarenzhou/main.jpg',
    'img/diet/xiarenzhou/step1.jpg',
    'img/diet/xiarenzhou/step2.jpg',
    'img/diet/xiarenzhou/step3.jpg',
    'img/diet/xiarenzhou/step4.jpg',
    'img/diet/xiarenzhou/step5.jpg'
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    11,
    'img/diet/niuyouguo/main.jpg',
    'img/diet/niuyouguo/step1.jpg',
    'img/diet/niuyouguo/step2.jpg',
    'img/diet/niuyouguo/step3.jpg',
    'img/diet/niuyouguo/step4.jpg',
    'img/diet/niuyouguo/step5.jpg'
);
INSERT INTO bamboo_products_pic VALUES(
    null,
    12,
    'img/diet/niuroushala/main.jpg',
    'img/diet/niuroushala/step1.jpg',
    'img/diet/niuroushala/step2.jpg',
    'img/diet/niuroushala/step3.jpg',
    'img/diet/niuroushala/step4.jpg',
    'img/diet/niuroushala/step5.jpg'
);
