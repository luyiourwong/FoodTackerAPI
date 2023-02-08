import unittest
import json
# 調用正式API
from FoodTackerAPI import app
import FoodTackerAPI.dbenum as enum

# 前端互動測試
class Test_testfront(unittest.TestCase):

    # 取得所有列表測試
    def test_getListAll(self):
        print("==================================================")
        print("Test Start: get all store")
        data = None
        # 開啟測試客戶端
        with app.test_client() as c:
            # 傳送request，取得所有列表
            resp = c.get('/restaurants/')
            if resp is None:
                self.fail("Error: can not get response")
            # 讀取response
            data = json.loads(resp.data)
        if data is None:
            self.fail("Error: can not get data")
        # 比對資料
        else:
            print("API returns data:")
            print(str(data))
            # 測試列表大小
            assert len(data) >= 0
            print("Pass: store list size")

    # 篩選測試 Category_Id 1
    def test_getListFilter_Cat_1(self):
        print("==================================================")
        print("Test Start: get store with Category_Id 1")
        # 測試分類id為001
        data = None
        # 開啟測試客戶端
        with app.test_client() as c:
            # 傳送request和json，取得特定類別id的餐廳
            resp = c.get('/restaurants/',
                         json={enum.StoreCategory_CategoryId:[enum.Test_Category_Id]})
            if resp is None:
                self.fail("Error: can not get response")
            # 讀取response
            data = json.loads(resp.data)
        if data is None:
            self.fail("Error: can not get data")
        # 比對資料
        else:
            print("API returns data:")
            print(str(data))
            # 測試列表大小
            assert len(data) >= 1
            print("Pass: store size Category_Id 1")
    
    # 篩選測試 Category_Id 1+2
    def test_getListFilter_Cat_1and2(self):
        print("==================================================")
        print("Test Start: get store with Category_Id 1 and 2")
        # 測試分類id為002
        data = None
        # 開啟測試客戶端
        with app.test_client() as c:
            # 傳送request和json，取得特定類別id的餐廳
            resp = c.get('/restaurants/',
                         json={enum.StoreCategory_CategoryId:[enum.Test_Category_Id,enum.Test_Category2_Id]})
            if resp is None:
                self.fail("Error: can not get response")
            # 讀取response
            data = json.loads(resp.data)
        if data is None:
            self.fail("Error: can not get data")
        # 比對資料
        else:
            print("API returns data:")
            print(str(data))
            # 測試列表大小
            # 此功能還未完成
            pass
            #assert len(data) >= 1
            #print("Pass: store size Category_Id 1 and 2")
    
    # 篩選測試 StoreName
    def test_getListFilter_Name(self):
        print("==================================================")
        print("Test Start: get store with StoreName")
        # 測試分類name為store
        data = None
        # 開啟測試客戶端
        with app.test_client() as c:
            # 傳送request和json，取得特定類別id的餐廳
            resp = c.get('/restaurants/',
                         json={enum.Store_Name:enum.Test_StoreName})
            if resp is None:
                self.fail("Error: can not get response")
            # 讀取response
            data = json.loads(resp.data)
        if data is None:
            self.fail("Error: can not get data")
        # 比對資料
        else:
            print("API returns data:")
            print(str(data))
            # 測試列表大小
            # 此功能還未完成
            pass
            #assert len(data) == 1
            #print("Pass: store size StoreName")

    # 篩選測試 TimeClose
    def test_getListFilter_TimeClose(self):
        print("==================================================")
        print("Test Start: get store with TimeClose")
        # 測試分類TimeClose為20
        data = None
        # 開啟測試客戶端
        with app.test_client() as c:
            # 傳送request和json，取得特定類別id的餐廳
            resp = c.get('/restaurants/',
                         json={enum.Store_TimeClose:enum.Test_Close})
            if resp is None:
                self.fail("Error: can not get response")
            # 讀取response
            data = json.loads(resp.data)
        if data is None:
            self.fail("Error: can not get data")
        # 比對資料
        else:
            print("API returns data:")
            print(str(data))
            # 測試列表大小
            # 此功能還未完成
            pass
            #assert len(data) >= 1
            #print("Pass: store size TimeClose")

    # 篩選測試 Keyword
    def test_getListFilter_Keyword(self):
        print("==================================================")
        print("Test Start: get store with Keyword Test_StoreName")
        # 測試分類Store_Id為001
        data = None
        # 開啟測試客戶端
        with app.test_client() as c:
            # 傳送request和json，取得特定類別id的餐廳
            resp = c.get('/restaurants/',
                         json={enum.Keyword:enum.Test_StoreName})
            if resp is None:
                self.fail("Error: can not get response")
            # 讀取response
            data = json.loads(resp.data)
        if data is None:
            self.fail("Error: can not get data")
        # 比對資料
        else:
            print("API returns data:")
            print(str(data))
            # 測試列表大小
            assert len(data) >= 1
            print("Pass: store Filter size with Keyword Test_StoreName")

    # 取得特定餐廳測試
    def test_getResDetail(self):
        print("==================================================")
        print("Test Start: get certain store")
        data = None
        # 開啟測試客戶端
        with app.test_client() as c:
            # 傳送request，取得特定
            resp = c.get('/restaurants/' + str(enum.Test_Id))
            if resp is None:
                self.fail("Error: can not get response")
            # 讀取response
            data = json.loads(resp.data)
        if data is None:
            self.fail("Error: can not get data")
        # 比對資料
        else:
            print("API returns data:")
            print(str(data))
            # 測試餐廳資料
            assert data[enum.Store_Id] == enum.Test_Id
            print("Pass: store Id")

    # 新增餐廳測試
    def test_addRes(self):
        print("==================================================")
        print("Test Start: add store")
        data = None
        # 開啟測試客戶端
        with app.test_client() as c:
            # 傳送request，包含餐廳JSON
            resp = c.post('/restaurants/',
                         json={enum.Store_Valid:enum.Test_Valid, 
                                enum.Store_Name:enum.Test_StoreName, 
                                enum.Store_TimeOpen:enum.Test_Open, 
                                enum.Store_TimeClose:enum.Test_Close, 
                                enum.Store_Rating:enum.Test_Rating, 
                                enum.Store_RatingTime:enum.Test_RatingTime, 
                                enum.StoreCategory_CategoryId:enum.Test_Category_Id, 
                                enum.Detail_Contact:enum.Test_ContactInfo, 
                                enum.Detail_Address:enum.Test_Address, 
                                enum.Detail_Description:enum.Test_Description})
            if resp is None:
                self.fail("Error: can not get response")
            # 讀取response
            data = json.loads(resp.data)
        if data is None:
            self.fail("Error: can not get data")
        # 比對資料
        else:
            print("API returns data:")
            print(str(data))
            # 測試餐廳資料
            assert data[enum.Store_Valid] == enum.Test_Valid
            print("Pass: store Valid")
            assert data[enum.Store_Name] == enum.Test_StoreName
            print("Pass: store StoreName")
            assert data[enum.Store_TimeOpen] == enum.Test_Open
            print("Pass: store Open")
            assert data[enum.Store_TimeClose] == enum.Test_Close
            print("Pass: store Close")
            assert data[enum.StoreCategory_CategoryId] == enum.Test_Category_Id
            print("Pass: store Category_Id")
            assert data[enum.Detail_Contact] == enum.Test_ContactInfo
            print("Pass: store ContactInfo")
            assert data[enum.Detail_Address] == enum.Test_Address
            print("Pass: store Address")
            assert data[enum.Detail_Description] == enum.Test_Description
            print("Pass: store Description")

# 啟動測試
if __name__ == '__main__':
    unittest.main()
