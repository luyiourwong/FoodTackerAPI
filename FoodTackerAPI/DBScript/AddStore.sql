--- WAITING TO RENEW ---

BEGIN;
INSERT INTO `ResDb`.`Store` (`Valid`, `StoreName`, `Open`, `Close`, `Rating`, `RatingTime`)
  VALUES (true, '【餐廳名稱】', '【開店時間】', '【打烊時間】', 【評分|FLOAT】, 【評分次數|預設: 20】);
INSERT INTO `ResDb`.`StoreDetail` (`StoreId`, `ContactInfo`, `Address`, `Description`)
  VALUES (LAST_INSERT_ID() , '【聯絡方式】', '【地址】', '【敘述、備註|預設: Google Map 網址】');
INSERT INTO `ResDb`.`Store_Category` (`Store_Id`, `Category_Id`)
  VALUES (LAST_INSERT_ID(), 【類別 Id】);
COMMIT;