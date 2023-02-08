--- WAITING TO RENEW ---

SELECT DISTINCT `ResDb`.`Store`.*
FROM `ResDb`.`Store`, `ResDb`.`Store_Category`
WHERE `ResDb`.`Store_Category`.Store_Id = `ResDb`.`Store`.Id AND `ResDb`.`Store_Category`.Category_Id IN (1,3);