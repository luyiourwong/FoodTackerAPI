from datetime import timedelta
from FoodTackerAPI import dummyData
import pymysql
from pymysql.cursors import DictCursor,Cursor
from pymysql.connections import Connection
import atexit
from FoodTackerAPI.res import res
import FoodTackerAPI.dbenum as enum
import FoodTackerAPI.category as cat

# 資料庫參數設定 **公開版已移除連接IP和密碼**
db_settings = {
    "host": "127.0.0.1",
    "port": 3306,
    "user": "root",
    "password": "",
    "db": "resDb",
    "charset": "utf8"
}

# 宣布全域變數
conn : Connection = None

# 連接DB
def initDB():
    global conn
    conn = None
    try:
        conn = pymysql.connect(**db_settings)
    except Exception as e:
        print(e)
    if conn is not None and conn.open:
        print(conn.host_info)
        print("DB connected")
    else:
        print("DB not connect")

# 解除連線DB
# 程式正常結束時會自動呼叫此方法
@atexit.register
def closeDB():
    global conn
    if conn is not None and conn.open:
        conn.close()
        conn = None
    print("DB disconnected")

# 獲取 Store 全部項
def getResList():
    global conn
    results = []
    # 如果有連接到DB，獲取資料
    if conn is not None and conn.open:
        cursor:DictCursor = conn.cursor(DictCursor)
        # 查詢Store表全部項
        cmd = "SELECT * FROM " + enum.DB_Store
        try:
            cursor.execute(cmd)
            # 取全部結果
            results = cursor.fetchall()
        except Exception as e:
            print(e)
    # 如果沒有連接到DB,啟用測試資料
    else:
        results = dummyData.getResaurants()
    # 將資料放進dict
    # addStore(results,dic)
    return results

# 獲取 Category 全部項
def initCategory():
    global conn
    results = []
    # 如果有連接到DB，獲取資料
    if conn is not None and conn.open:
        cursor:Cursor = conn.cursor(Cursor)
        # 查詢Category全部項
        cmd = f"select * from {enum.DB_Category}"
        try:
            cursor.execute(cmd)
            # 取全部結果
            results = cursor.fetchall()
        except Exception as e:
            print(e)
    # 如果沒有連接到DB,啟用測試資料
    else:
        results = ((enum.Test_Category_Id,enum.Test_Category_Name),
                (enum.Test_Category2_Id,enum.Test_Category2_Name),
                ("003","Test"))

    # 初始化dict
    list = dict()

    # 將資料放進dict
    addCategory(results,list)

    # 將資料新增至category
    cat.initCat()
    cat.addCat(list)

    return cat.getCatAll()

# 取得 特定餐廳ID 的 Detail
def getResDetail(resId):
    global conn
    sql = f'select {enum.DB_Store}.{enum.Store_Id},{enum.DB_Store}.{enum.Store_Name},{enum.DB_Store}.{enum.Store_TimeOpen},{enum.DB_Store}.{enum.Store_TimeClose},{enum.DB_Store}.{enum.Store_Rating},{enum.DB_Store}.{enum.Store_RatingTime},\
        {enum.DB_Detail}.{enum.Detail_Address},{enum.DB_Detail}.{enum.Detail_Contact},{enum.DB_Detail}.{enum.Detail_Description} \
        from {enum.DB_Store},{enum.DB_Detail}\
        where {enum.Store_Id} = {enum.Detail_Id} and {enum.Store_Id} = {resId}'
    dictCursor: DictCursor = conn.cursor(DictCursor)
    try:
        dictCursor.execute(sql)
        conn.commit()
    except Exception as e:
        print(e)
        conn.rollback()
    doc = dictCursor.fetchone()
    if(doc == None):
        doc = getRes(resId)
    if(doc != None):
        doc[enum.Store_TimeOpen] = doc[enum.Store_TimeOpen].__str__()
        doc[enum.Store_TimeClose] = doc[enum.Store_TimeClose].__str__()
    return doc

# 取得 特定餐廳ID 的 Store
def getRes(resId):
    sql = f'select * \
        from {enum.DB_Store}\
        where {enum.Store_Id} = {resId}'
    dictCursor: DictCursor = conn.cursor(DictCursor)
    try:
        dictCursor.execute(sql)
        conn.commit()
    except Exception as e:
        print(e)
        conn.rollback()
    doc = dictCursor.fetchone()
    return doc

# 獲取 特定餐廳的 StoreDetail
def updateResDetail(res : res):
    global conn
    storeId = res.getId()
    results = []
    # 如果有連接到DB，獲取資料
    if conn is not None and conn.open:
        cursor:Cursor = conn.cursor(Cursor)
        # 查詢StoreDetail中id等於storeId的項
        cmd = "SELECT " + enum.Detail_Id + " FROM " + enum.DB_Detail + " WHERE " + enum.Detail_Id + " == " + storeId
        try:
            cursor.execute(cmd)
            # 只取一個結果
            results = cursor.fetchone()
        except Exception as e:
            print(e)
    # 如果沒有連接到DB,啟用測試資料
    else:
        results = (enum.Test_ContactInfo,enum.Test_Address,enum.Test_Description)

    # 將詳細資料放進res
    res.setContactInfo(results[0])
    res.setAddress(results[1])
    res.setDescription(results[2])

    return res

# 獲取 全部符合 categoryid 的餐廳
def getResCatAll(catId : str):
    global conn
    results = []
    # 如果有連接到DB，獲取資料
    if conn is not None and conn.open:
        cursor:Cursor = conn.cursor(Cursor)
        # 查詢Store_Category中category id等於catId的項
        cmd = "SELECT " + enum.StoreCategory_StoreId + " FROM " + enum.DB_StoreCategory + " WHERE " + enum.StoreCategory_CategoryId + " == " + catId
        try:
            cursor.execute(cmd)
            # 只取一個結果
            results = cursor.fetchall()
        except Exception as e:
            print(e)
    # 如果沒有連接到DB,啟用測試資料
    else:
        dic = getStoreAll()
        list = []
        for r in dic.values():
            updateResCat(r)
            if r.getCategoryId() in catId:
                list.append(r.__dict__)
        results = list

    return results

# 獲取 特定餐廳的 categoryid
def updateResCat(res : res):
    storeId = res.getId()

    global conn
    results = []
    # 如果有連接到DB，獲取資料
    if conn is not None and conn.open:
        cursor:Cursor = conn.cursor(Cursor)
        # 查詢Store_Category中store id等於storeId的項
        cmd = "SELECT " + enum.StoreCategory_CategoryId + " FROM " + enum.DB_StoreCategory + " WHERE " + enum.StoreCategory_StoreId + " == " + storeId
        try:
            cursor.execute(cmd)
            # 只取一個結果
            results = cursor.fetchone()
        except Exception as e:
            print(e)
    # 如果沒有連接到DB,啟用測試資料
    else:
        if storeId == "002":
            results = (enum.Test_Category2_Id)
        else:
            results = (enum.Test_Category_Id)

    # 將詳細資料放進res
    res.setCategoryId(results)

    return res

# 新增 餐廳
def addRes(detail : dict):
    '''
    # Store資料表
    detail[enum.Store_Id]
    detail[enum.Store_Valid]
    detail[enum.Store_Name]
    detail[enum.Store_TimeOpen]
    detail[enum.Store_TimeClose]

    # StoreCategory資料表
    detail[enum.StoreCategory_CategoryId]

    # Detail資料表
    detail[enum.Detail_Contact]
    detail[enum.Detail_Address]
    detail[enum.Detail_Description]
    '''

    global conn
    results = []
    # 如果有連接到DB，獲取資料
    if conn is not None and conn.open:
        dictCursor:DictCursor = conn.cursor(DictCursor)
        # 新增或插入餐廳資訊到Store資料表
        sql_store = f'insert into \
            {enum.DB_Store}({enum.Store_Valid}, {enum.Store_Name}, {enum.Store_TimeOpen}, {enum.Store_TimeClose}, {enum.Store_Rating}, {enum.Store_RatingTime}) \
            values({detail[enum.Store_Valid]}, "{detail[enum.Store_Name]}", "{detail[enum.Store_TimeOpen]}", "{detail[enum.Store_TimeClose]}", "{detail[enum.Store_Rating]}", "{detail[enum.Store_RatingTime]}")'
        sql_insert_id = f'select LAST_INSERT_ID()'
        try:
            dictCursor.execute(sql_store)
            dictCursor.execute(sql_insert_id)
            conn.commit()
        except Exception as e:
            conn.rollback()
            print(e)
            return None
        # 新增或插入 Detail 和 store_category
        insertDetail(dictCursor, detail)
    # 如果沒有連接到DB,或提交DB成功,直接回傳原資料
    return detail

# 新增餐廳的 Detail 和 store_category
def insertDetail(dictCursor: DictCursor, detail : dict):
    global conn
    # 取得新餐廳的id
    last_insert_id = dictCursor.fetchone()['LAST_INSERT_ID()']
    # 如果Detail不為空，新增Detail
    if(detail[enum.Detail_Address] is not None and detail[enum.Detail_Contact] is not None and detail[enum.Detail_Description] is not None):
        sql_detail = f'insert into {enum.DB_Detail} ({enum.Detail_Id}, {enum.Detail_Contact}, {enum.Detail_Address}, {enum.Detail_Description})\
            values ({last_insert_id}, "{detail[enum.Detail_Contact]}", "{detail[enum.Detail_Address]}", "{detail[enum.Detail_Description]}")'
    # 新增store_category
    sql_category = f'insert into {enum.DB_StoreCategory} ({enum.StoreCategory_StoreId}, {enum.StoreCategory_CategoryId})\
        values ({last_insert_id}, "{detail[enum.StoreCategory_CategoryId]}")'
    try:
        if sql_detail is not None:
            dictCursor.execute(sql_detail)
        dictCursor.execute(sql_category)
        conn.commit()
    except Exception as e:
        conn.rollback()
        print(e)
    pass

# 將Category資料放進dict
def addCategory(results,list):
    for row in results:
        id = row[0]
        name = row[1]
        list[id] = name

    return list

# 回傳全部的餐廳資料
def getStoreAll():
    dic = getResList()
    return dic

# keyword查詢
def getSearchResult(filter : dict):
    global conn
    if (conn is None or not conn.open):
        return getResList()
    if enum.Keyword in filter.keys() and enum.StoreCategory_CategoryId in filter.keys():
        categoryIdSet = tuple(filter[enum.StoreCategory_CategoryId])
        IdSetsString = getStoreIdSetsString(categoryIdSet)
        sql = f'select {enum.DB_Store}.*\
            from {enum.DB_Store}, {enum.DB_Detail}\
            where Id = StoreId and {enum.DB_Store}.{enum.Store_Id} in {IdSetsString} and (StoreName like "%{filter[enum.Keyword]}%" or Description like "%{filter[enum.Keyword]}%" or Address like "%{filter[enum.Keyword]}%")'
    elif enum.Keyword in filter.keys():
        sql = f'select {enum.DB_Store}.*\
            from {enum.DB_Store}, {enum.DB_Detail}\
            where Id = StoreId and (StoreName like "%{filter[enum.Keyword]}%" or Description like "%{filter[enum.Keyword]}%" or Address like "%{filter[enum.Keyword]}%")'
    elif enum.StoreCategory_CategoryId in filter.keys():
        categoryIdSet = tuple(filter[enum.StoreCategory_CategoryId])
        print(filter[enum.StoreCategory_CategoryId])
        if len(filter[enum.StoreCategory_CategoryId]) > 1:
            IdSetsString = getStoreIdSetsString(categoryIdSet)
            sql = f'select {enum.DB_Store}.*\
            from {enum.DB_Store}\
            where {enum.DB_Store}.{enum.Store_Id} in {IdSetsString}'
        else:
            sql = f'select {enum.DB_Store}.*\
                from {enum.DB_Store}, {enum.DB_StoreCategory}\
                where {enum.DB_Store}.{enum.Store_Id} = {enum.DB_StoreCategory}.{enum.StoreCategory_StoreId} and {enum.DB_StoreCategory}.{enum.StoreCategory_CategoryId} in ({categoryIdSet[0]})'
    else:
        return
    dictCursor : DictCursor = conn.cursor(DictCursor)
    try:
        dictCursor.execute(sql)
        conn.commit()
    except Exception as e:
        conn.rollback()
        print(e)

    return dictCursor.fetchall()

def getStoreIdSetsString(categoryIdSet):
    sql = f'select distinct {enum.DB_Store}.{enum.Store_Id}\
        from {enum.DB_Store}, {enum.DB_StoreCategory}\
        where {enum.DB_Store}.{enum.Store_Id} = {enum.DB_StoreCategory}.{enum.StoreCategory_StoreId} and {enum.DB_StoreCategory}.{enum.StoreCategory_CategoryId} in {categoryIdSet}'
    cursor:Cursor = conn.cursor(Cursor)
    try:
        cursor.execute(sql)
        conn.commit()
    except Exception as e:
        conn.rollback()
        print(e)
    results = []
    for tupleResult in cursor.fetchall():
        results.append(tupleResult[0])
    if len(results) > 1 :
        return tuple(results).__str__()
    return f'({results[0]})'

# 刪除
def delRes(resId):
    global conn
    sql = f'update {enum.DB_Store}\
        set {enum.Store_Valid} = 0\
        where {enum.Store_Id} = {resId}'
    dictCursor : DictCursor = conn.cursor(DictCursor)
    try:
        dictCursor.execute(sql)
        conn.commit()
    except Exception as e:
        conn.rollback()
        print(e)
    return dictCursor.rowcount

############################################
# 執行初始化
initDB()
initCategory()