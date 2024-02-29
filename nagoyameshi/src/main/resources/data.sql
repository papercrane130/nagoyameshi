-- categoryテーブル
INSERT IGNORE INTO category (id, name) VALUES (1, '和食');
INSERT IGNORE INTO category (id, name) VALUES (2, '洋食');
INSERT IGNORE INTO category (id, name) VALUES (3, '中華');
INSERT IGNORE INTO category (id, name) VALUES (4, 'インド料理');
INSERT IGNORE INTO category (id, name) VALUES (5, 'イタリアン');
INSERT IGNORE INTO category (id, name) VALUES (6, '海鮮');
INSERT IGNORE INTO category (id, name) VALUES (7, 'ジビエ');
INSERT IGNORE INTO category (id, name) VALUES (8, '韓国料理');
INSERT IGNORE INTO category (id, name) VALUES (9, '家庭の味');
INSERT IGNORE INTO category (id, name) VALUES (10, 'フランス料理');

-- restaurantsテーブル
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (1, 1, 'イカメシ','restaurants01.png', '創業100年の伝統の味が自慢です。', 3000, 6000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (2, 7, '麺どころサトシ', 'restaurants02.png', '店主手打ちの麺に、秘伝のスープの相性バッチリ。' , 1000, 2000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (3, 3, 'パスタ太郎', 'restaurants03.png', 'イタリアで5年間修行を積んだ本場の味が自慢。' , 5000, 7000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (4, 2, '佐藤くん家のご飯', 'restaurants04.png', 'お母さんの味を身目指して５年。地元名古屋で取れた野菜をふんだんに使用しています。' , 3000, 6000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (5, 5, 'ナマステ', 'restaurants05.png', '甘口から辛口まで約50種のカレーを取り揃えています。陽気な店主が出迎えます。', 1500, 3000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (6, 9, '肉肉天国', 'restaurants06.png', '直営農場から仕入れた新鮮な肉を提供します。農場見学もできます。' , 4000, 6000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (7, 10, '注文の多い料理店', 'restaurants07.png', '旬な魚介を取り揃えております。' , 6000, 8000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (8, 3, 'ハンバーグ王国', 'restaurants08.png', '豊富なメニューを取り揃えています。' , 1000, 3000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (9, 6, 'うまい寿司', 'restaurants09.png', '個室を完備しております。' , 5000, 10000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (10, 9, '鍋鍋底抜け', 'restaurants10.png', '底抜けに明るいスタッフ一同お待ちしております。' , 3500, 5000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (11, 4, 'あひる','restaurants11.png', '創業100年の伝統の味が自慢です。', 3000, 6000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (12, 7, 'ぽん太', 'restaurants12.png', '店主手打ちの麺に、秘伝のスープの相性バッチリ。' , 1000, 2000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (13, 5, '浜の家', 'restaurants13.png', 'イタリアで5年間修行を積んだ本場の味が自慢。' , 5000, 7000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (14, 4, '茶茶茶', 'restaurants14.png', 'お母さんの味を身目指して５年。地元名古屋で取れた野菜をふんだんに使用しています。' , 3000, 6000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (15, 2, '寄ってきな', 'restaurants15.png', '甘口から辛口まで約50種のカレーを取り揃えています。陽気な店主が出迎えます。', 1500, 3000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (16, 3, 'うどんうどん', 'restaurants16.png', '直営農場から仕入れた新鮮な肉を提供します。農場見学もできます。' , 4000, 6000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (17, 1, 'ゆでたまご', 'restaurants17.png', '旬な魚介を取り揃えております。' , 6000, 8000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (18, 8, '餅食べたい', 'restaurants18.png', '豊富なメニューを取り揃えています。' , 1000, 3000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (19, 10, '宇宙食', 'restaurants19.png', '個室を完備しております。' , 5000, 10000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (20, 8, '珍味屋', 'restaurants20.png', '底抜けに明るいスタッフ一同お待ちしております。' , 3500, 5000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');
INSERT IGNORE INTO restaurants (id, category_id, name, image_name, description, lowest_price, highest_price, postal_code, address, phone_number) VALUES (21, 5, 'コケコッコー', 'restaurants21.png', '底抜けに明るいスタッフ一同お待ちしております。' , 3500, 5000, '073-0145', '愛知県砂川市西五条南X-XX-XX', '012-345-678');

-- rolesテーブル
INSERT IGNORE INTO roles (id, name) VALUES (1, 'ROLE_GENERAL');
INSERT IGNORE INTO roles (id, name) VALUES (2, 'ROLE_ADMIN');
INSERT IGNORE INTO roles (id, name) VALUES (3, 'ROLE_SUBSC');

-- usersテーブル
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (1, '侍 太郎', 'サムライ タロウ', '101-0022', '東京都千代田区神田練塀町300番地', '090-1234-5678', 'taro.samurai@example.com', '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 1, true);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (2, '侍 花子', 'サムライ ハナコ', '101-0022', '東京都千代田区神田練塀町300番地', '090-1234-5678', 'hanako.samurai@example.com', '$2a$10$2JNjTwZBwo7fprL2X4sv.OEKqxnVtsVQvuXDkI8xVGix.U3W5B7CO', 2, true);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (3, '侍 義勝', 'サムライ ヨシカツ', '638-0644', '奈良県五條市西吉野町湯川X-XX-XX', '090-1234-5678', 'yoshikatsu.samurai@example.com', 'password', 3, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (4, '侍 幸美', 'サムライ サチミ', '342-0006', '埼玉県吉川市南広島X-XX-XX', '090-1234-5678', 'sachimi.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (5, '侍 雅', 'サムライ ミヤビ', '527-0209', '滋賀県東近江市佐目町X-XX-XX', '090-1234-5678', 'miyabi.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (6, '侍 正保', 'サムライ マサヤス', '989-1203', '宮城県柴田郡大河原町旭町X-XX-XX', '090-1234-5678', 'masayasu.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (7, '侍 真由美', 'サムライ マユミ', '951-8015', '新潟県新潟市松岡町X-XX-XX', '090-1234-5678', 'mayumi.samurai@example.com', 'password', 3, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (8, '侍 安民', 'サムライ ヤスタミ', '241-0033', '神奈川県横浜市旭区今川町X-XX-XX', '090-1234-5678', 'yasutami.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (9, '侍 章緒', 'サムライ アキオ', '739-2103', '広島県東広島市高屋町宮領X-XX-XX', '090-1234-5678', 'akio.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (10, '侍 祐子', 'サムライ ユウコ', '601-0761', '京都府南丹市美山町高野X-XX-XX', '090-1234-5678', 'yuko.samurai@example.com', 'password', 1, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (11, '侍 秋美', 'サムライ アキミ', '606-8235', '京都府京都市左京区田中西春菜町X-XX-XX', '090-1234-5678', 'akimi.samurai@example.com', 'password', 3, false);
INSERT IGNORE INTO users (id, name, furigana, postal_code, address, phone_number, email, password, role_id, enabled) VALUES (12, '侍 信平', 'サムライ シンペイ', '673-1324', '兵庫県加東市新定X-XX-XX', '090-1234-5678', 'shinpei.samurai@example.com', 'password', 1, false);

-- reservationsテーブル
INSERT IGNORE INTO reservations (id, restaurant_id, user_id, reservation_date, number_of_people) VALUES (1, 1, 1, '2023-04-01', 2);
INSERT IGNORE INTO reservations (id, restaurant_id, user_id, reservation_date, number_of_people) VALUES (2, 2, 1, '2023-04-02', 3);
INSERT IGNORE INTO reservations (id, restaurant_id, user_id, reservation_date, number_of_people) VALUES (3, 3, 1, '2023-04-06', 4);
INSERT IGNORE INTO reservations (id, restaurant_id, user_id, reservation_date, number_of_people) VALUES (4, 4, 1, '2023-04-08', 5);
INSERT IGNORE INTO reservations (id, restaurant_id, user_id, reservation_date, number_of_people) VALUES (5, 5, 1, '2023-04-11', 6);
INSERT IGNORE INTO reservations (id, restaurant_id, user_id, reservation_date, number_of_people) VALUES (6, 6, 1, '2023-04-23', 2);
INSERT IGNORE INTO reservations (id, restaurant_id, user_id, reservation_date, number_of_people) VALUES (7, 7, 1, '2023-04-25', 3);
INSERT IGNORE INTO reservations (id, restaurant_id, user_id, reservation_date, number_of_people) VALUES (8, 8, 1, '2023-04-30', 4);
INSERT IGNORE INTO reservations (id, restaurant_id, user_id, reservation_date, number_of_people) VALUES (9, 9, 1, '2023-05-01', 5);
INSERT IGNORE INTO reservations (id, restaurant_id, user_id, reservation_date, number_of_people) VALUES (10, 10, 1, '2023-07-01', 6);
INSERT IGNORE INTO reservations (id, restaurant_id, user_id, reservation_date, number_of_people) VALUES (11, 11, 1, '2023-09-01', 2);

-- reviewsテーブル
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (1, 4, 12, '沈むように溶けていくように。さよならだけだった', 1);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (2, 1, 5, '残酷な天使のように少年よ神話になれ', 2);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (3, 2, 1, '負けないでもう少し最後まで走り抜けて', 3);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (4, 3, 2, 'いくつもの日々を超えてたどり着いた今がある。', 4);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (5, 4, 3, '新時代はこの未来だ。世界中全部変えてしまえば', 5);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (6, 5, 4, 'あなたが望むならこの胸をいとおして', 1);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (7, 6, 5, '何度も青あざだらけで涙を流した', 2);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (8, 7, 6, '君だけのためのヒーロー。', 3);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (9, 8, 7, 'しりとり。りんご。ゴリラ。', 4);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (10, 9, 8, 'おどるポンポコリン', 5);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (11, 10, 9, 'とっとこ走るよハム太郎', 1);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (12, 11, 10, 'だーいすきなのはひーまわりのたねー', 2);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (13, 12, 11, 'その一言で全てがわかった', 3);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (14, 13, 12, 'すばらしき世界に今日も乾杯', 4);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (15, 14, 1, '感じたままに描く自分で選んだその色で', 5);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (16, 15, 2, '君の姿は僕に似ている。静かに泣いてるように', 1);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (17, 16, 3, 'あんなに一緒だったのに夕暮れはもう違う色', 2);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (18, 17, 4, '私に帰りなさい。記憶をたどり', 3);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (19, 18, 5, '風が吹いている。僕はここで生きていく', 4);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (20, 19, 6, '羽ばたいたら戻らないと言って目指したのは', 5);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (21, 20, 7, '愛し合う二人幸せの空隣同士あなたとあたしさくらんぼ', 1);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (22, 21, 8, 'ロミオ。ああなぜ、あなたはロミオなの', 2);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (23, 1, 9, '大丈夫さ前に進もう太陽をいつも胸に繋いだ手伝わるパワー', 3);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (24, 2, 10, '蒙古タンメン食べたい', 4);
INSERT IGNORE INTO reviews (id, restaurant_id, user_id, review, score) VALUES (25, 3, 11, 'あああああああああああああああああああああああああ', 5);

-- favoritesテーブル
INSERT IGNORE INTO favorites (id, restaurant_id, user_id) VALUES (1, 4, 1);
INSERT IGNORE INTO favorites (id, restaurant_id, user_id) VALUES (2, 5, 1);
INSERT IGNORE INTO favorites (id, restaurant_id, user_id) VALUES (3, 6, 2);
INSERT IGNORE INTO favorites (id, restaurant_id, user_id) VALUES (4, 3, 3);
INSERT IGNORE INTO favorites (id, restaurant_id, user_id) VALUES (5, 8, 4);
INSERT IGNORE INTO favorites (id, restaurant_id, user_id) VALUES (6, 9, 1);
INSERT IGNORE INTO favorites (id, restaurant_id, user_id) VALUES (7, 1, 5);
INSERT IGNORE INTO favorites (id, restaurant_id, user_id) VALUES (8, 4, 2);
INSERT IGNORE INTO favorites (id, restaurant_id, user_id) VALUES (9, 4, 1);
INSERT IGNORE INTO favorites (id, restaurant_id, user_id) VALUES (10, 3, 6);
