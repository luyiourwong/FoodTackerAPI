-- DEMO DATA

---- C1

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '韓式小吃', '11:00:00', '21:00:00', 4.2, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424624008', '407台中市西屯區西屯路三段148-39號', 'https://goo.gl/maps/7WzU1JUsLGcAxMHr8');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 1);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '張家温洲大餛飩韓國料理', '11:00:00', '21:00:00', 3.7, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424634281', '407台中市西屯區福雅路18號', 'https://goo.gl/maps/cZtTaqFs5cFJfjD59');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 1);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '金老爺韓式料理', '11:30:00', '21:00:00', 4.4, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424526930', '407台中市西屯區福星路220號', 'https://goo.gl/maps/4pa93CsUgsAyhYtJ6');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 1);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '笨豬跳韓式燒肉 - 台中店 Bungy Jump Korean BBQ', '11:30:00', '22:00:00', 4.5, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0422548818', '40757台中市西屯區朝富路38號', 'https://goo.gl/maps/dEAuviRarvsg9rRY7');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 1);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '一桶 tone 韓式新食-人氣韓式燒肉', '11:00:00', '21:30:00', 4.5, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424619090', '407台中市西屯區西屯路三段166-60號', 'https://goo.gl/maps/Do1zQmEcRBq321LY9');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 1);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '朴大哥的韓式炸雞逢甲總店', '17:00:00', '02:00:00', 3.8, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0988328178', '407台中市西屯區逢甲路20巷28弄5號', 'https://g.page/PUDAGE?share');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 1);
COMMIT;

---- C2

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '「村日部」日式料理-高cp值料理推薦|丼飯|壽司|燒烤|揚物|', '17:00:00', '01:00:00', 4.8, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424526672', '407台中市西屯區西屯路二段285-3號', 'https://goo.gl/maps/Z19aHb2geT36mQMHA');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 2);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '築也平價日本料理 青海店', '11:00:00', '23:00:00', 3.7, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424521005', '407台中市西屯區上仁街168號', 'https://goo.gl/maps/Cv2njdGzbXWDro9m7');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 2);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '拾飯 日式料理．丼飯．壽司．刺身', '11:30:00', '22:00:00', 4.6, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424519668', '407台中市西屯區至善路222號', 'https://goo.gl/maps/5YLLBiwT4RwMCfJ57');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 2);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '屋簷下 日式手作料理', '11:00:00', '21:00:00', 4.8, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424529886', '407台中市西屯區福上巷232-1號', 'https://goo.gl/maps/zNFk38Ec3BPq6BSQ7');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 2);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '藏崎日式料理', '11:30:00', '21:00:00', 4.4, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0422514538', '407台中市西屯區黎明路二段978號', 'https://goo.gl/maps/buVhWLvQJjt6wyCw6');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 2);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '小竹屋日式料理', '17:00:00', '00:00:00', 4.2, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424519609', '407台中市西屯區福星路321號', 'https://goo.gl/maps/dUEvFR8k1PWBUJgXA');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 2);
COMMIT;

---- C3

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '泰漾泰式簡餐', '11:30:00', '21:00:00', 3.9, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424521327', '407台中市西屯區文華路179號', 'https://goo.gl/maps/yNtQaf85BLGEnunH8');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 3);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '巧味泰式料理', '11:00:00', '21:30:00', 3.7, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424512899', '407台中市西屯區文華路7-7號', 'https://goo.gl/maps/ehdax582aksyCkJ38');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 3);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '享泰多私宅料理', '11:30:00', '21:30:00', 4.0, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424524929', '407台中市西屯區福上巷270號', 'https://goo.gl/maps/tHXwi2nwSLAjQKQaA');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 3);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '日日泰泰式料理廚房', '11:00:00', '20:00:00', 4.6, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0427081168', '407033台中市西屯區華夏巷東二弄20號1樓', 'https://goo.gl/maps/oJVthM9PYv94nTr1A');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 3);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '鶯越式泰式美食', '11:00:00', '22:00:00', 4.3, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0921324789', '407台中市西屯區文華路20-9號', 'https://goo.gl/maps/L6o6A2Nzi76TdJPV8');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 3);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '東萫來泰緬雲南料理', '11:00:00', '22:00:00', 4.4, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0422175089', '407台中市西屯區文華路127巷3號', 'https://goo.gl/maps/FhySAE5w7qbCERaZ8');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 3);
COMMIT;

---- C4

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '京采小館', '11:00:00', '20:30:00', 4.2, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0427081800', '407台中市西屯區青海路二段292-10號', 'https://goo.gl/maps/v8U6UNsqFBijLnDX6');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 4);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '碗裏 want eat', '11:00:00', '20:30:00', 4.9, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0427060056', '407台中市西屯區文華路136號', 'https://goo.gl/maps/mmA2q2SfDYH1ULNe8');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 4);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '豫春園麵食館', '11:00:00', '21:30:00', 4.2, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424522339', '407台中市西屯區西安街198號', 'https://goo.gl/maps/A1yL8fQFyDQcBs5m7');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 4);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '刁民-酸菜魚', '12:00:00', '02:00:00', 4.2, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424522666', '407台中市西屯區福星路459號', 'https://goo.gl/maps/1maanffVqjhuJKwf7');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 4);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '珍膳坊牛肉麵', '11:00:00', '21:00:00', 4.2, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424528075', '407台中市西屯區文華路127巷20號', 'https://goo.gl/maps/z5ity6WP6sSjLRGFA');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 4);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '陳媽媽四季涼補', '11:00:00', '23:30:00', 4.3, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0427082466', '407台中市西屯區福星路287號', 'https://g.page/fc-chenmom?share');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 4);
COMMIT;


---- C5 

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '麥當勞-台中逢甲店', '04:00:00', '03:00:00', 4.0, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424513592', '407台中市西屯區福星路427號1 樓', 'https://goo.gl/maps/X2A747FN8rr8WPn96');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 5);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '麥當勞-台中河南二店', '00:00:00', '00:00:00', 4.0, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0422960108', '407台中市西屯區河南路二段186號', 'https://goo.gl/maps/YJMrdX8uGsQjqn1J8');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 5);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '肯德基KFC-台中福星餐廳', '10:00:00', '23:00:00', 3.7, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0427076080', '407台中市西屯區福星北路1號', 'https://goo.gl/maps/o4W7sv9fQqSuQwa56');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 5);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '滿點速食早餐', '06:00:00', '12:00:00', 4.2, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0921768132', '407台中市西屯區逢甲路21號', 'https://goo.gl/maps/H31qDHhYAsDTSQASA');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 5);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '麥當勞-中港二店', '00:00:00', '00:00:00', 4.0, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424634530', '407台中市西屯區台灣大道四段620號', 'https://goo.gl/maps/R9mAC184DfniyQsg7');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 5);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '胖老爹美式炸雞總店', '11:00:00', '23:00:00', 4.2, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424510078', '407台中市西屯區烈美街88號', 'https://goo.gl/maps/PrCL4vceqvxFEqhR8');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 5);
COMMIT;


---- C6

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '久城素食自助餐', '11:00:00', '19:30:00', 4.1, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424529127', '407台中市西屯區西屯路二段283-1號', 'https://goo.gl/maps/p4cwr8dauvP9Sfjy5');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 6);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '中興素食', '10:30:00', '20:30:00', 4.0, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424517196', '407台中市西屯區福星路454號', 'https://goo.gl/maps/3fXdtF3im8ArQGoP8');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 6);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '大慈素食', '05:30:00', '13:30:00', 4.6, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424528132', '407台中市西屯區西屯路二段296之24號', 'https://g.page/DachiforVegan?share');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 6);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '禾河田素齋', '10:30:00', '19:00:00', 4.6, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0427085528', '407台中市西屯區西屯路二段297-8巷68號', 'https://goo.gl/maps/3ByjftsnGbhTfmiF8');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 6);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '緑郷村素食', '11:00:00', '21:00:00', 3.8, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424511153', '407台中市西屯區西屯路二段269-41號', 'https://goo.gl/maps/uWCfxdPcqJ9VTF3T8');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 6);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '不老翁素食', '06:00:00', '19:30:00', 3.8, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424520561', '407台中市西屯區逢明街155號', 'https://goo.gl/maps/uPJpShdRjXnaebNfA');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 6);
COMMIT;


---- C7

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '財神爺滷肉飯', '09:00:00', '02:30:00', 3.8, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0423113395', '407台中市西屯區惠來路三段176號', 'https://g.page/caishen25600296?share');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 7);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '食至路口魯肉飯', '19:00:00', '03:00:00', 4.1, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0919669944', '407台中市西屯區福星路630號', 'https://goo.gl/maps/gLyQYmfTnYfCg9vw7');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 7);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '一豪記飯麵館', '11:00:00', '20:30:00', 4.2, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424510410', '407台中市西屯區青海路二段303號', 'https://goo.gl/maps/seFapxFv3wZouVJo9');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 7);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '腦子有丼', '11:30:00', '20:00:00', 4.3, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424518089', '407台中市西屯區文華路207號', 'https://goo.gl/maps/i5PRcKKrAfe3vVAM6');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 7);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, 'A米炊飯', '11:00:00', '20:40:00', 4.0, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424525375', '407台中市西屯區福星路341號', 'https://goo.gl/maps/1ezMrhaJ9CAgpvo89');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 7);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '逢甲十字路口魯肉飯', '17:00:00', '23:55:00', 4.1, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0926873005', '407台中市西屯區福上巷339號', 'https://goo.gl/maps/qGTXp85eb4bfzGvo9');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 7);
COMMIT;


---- C8

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '就叫麵館', '10:30:00', '19:00:00', 4.6, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , 'NA', '407台中市西屯區西屯路二段296-20號', 'https://goo.gl/maps/5LMg6Ebn6StshMrbA');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 8);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '無名麵店', '16:30:00', '22:00:00', 4.2, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , 'NA', '407台中市西屯區永福路22巷33號', 'https://goo.gl/maps/aYunhGVcKgJYXiEb9');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 8);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '輝記麵食館', '11:00:00', '19:30:00', 3.9, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0427075762', '407台中市西屯區上安路103號', 'https://goo.gl/maps/aEzSineacoVB45b88');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 8);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '街角麵館', '11:00:00', '20:00:00', 4.3, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0427033549', '號, No. 126至善路西屯區台中市407', 'https://goo.gl/maps/MHCwBXHHRBfUJ26L7');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 8);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '美麦麵屋', '11:00:00', '21:00:00', 4.4, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '0424520282', '407台中市西屯區西安街277巷2號', 'https://goo.gl/maps/78Y9unx3diQ7Augc9');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 8);
COMMIT;

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '拾麵', '17:30:00', '22:00:00', 4.8, 20);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , 'NA', '407台中市西屯區至善路234巷6號', 'https://goo.gl/maps/cBvsW8sZkQ4xUKhCA');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 8);
COMMIT;
