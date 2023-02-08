from ast import keyword
import FoodTackerAPI.database as db
import FoodTackerAPI.dbenum as enum
from FoodTackerAPI.res import res

# 預設列表的回傳
def getListDefault():
    # 取得列表
    results = db.getResList()
    for doc in results:
        doc[enum.Store_TimeOpen] = doc[enum.Store_TimeOpen].__str__()
        doc[enum.Store_TimeClose] = doc[enum.Store_TimeClose].__str__()
    return results

# 篩選列表的回傳
def getListFilter(filter : dict):
    if(len(filter) == 0):
        raise Exception("empty")
    reuslts = db.getSearchResult(filter)
    for doc in reuslts:
        doc[enum.Store_TimeOpen] = doc[enum.Store_TimeOpen].__str__()
        doc[enum.Store_TimeClose] = doc[enum.Store_TimeClose].__str__()
    return reuslts

# 單一餐廳詳細資訊的回傳
def getResDetail(resId):
    doc = db.getResDetail(resId)
    return doc

# 新增餐廳的回傳
def addRes(detail : dict):
    return db.addRes(detail)

# 刪除邏輯
def delRes(resId):
    db.delRes(resId)
    pass