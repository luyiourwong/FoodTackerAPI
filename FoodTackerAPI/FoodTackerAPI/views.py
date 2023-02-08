"""
Routes and views for the flask application.
"""

from FoodTackerAPI import app
import FoodTackerAPI.system as system
import json
from flask import Response,request

# 查詢餐廳列表
@app.route('/restaurants', methods = ['GET'])
@app.route('/restaurants/', methods = ['GET'])
def list():
    # 如果有傳送JSON則回傳特定類別的列表
    try:
        body = request.get_json()
        result = system.getListFilter(body)
    # 如果沒有傳送JSON則回傳全部列表
    except:
        result = system.getListDefault()
    return Response(json.dumps(result), status= 200, content_type="application/json")

# 新增餐廳
@app.route('/restaurants', methods = ['POST'])
@app.route('/restaurants/', methods = ['POST'])
def addRes():
    try:
        body = request.get_json()
        result = system.addRes(body)
        if(result != None):
            return Response(json.dumps(result), status= 201, content_type="application/json")
        else :
            return Response(status= 400, content_type="application/json")
    except:
        return Response(status= 400, content_type="application/json")

# 取得特定id餐廳的詳細資料
@app.route('/restaurants/<int:id>', methods = ['GET'])
def getResInfomation(id):
    result = system.getResDetail(id)
    if(result != None):
        return Response(json.dumps(result), status= 200, content_type="application/json")
    else :
        return Response(status= 404, content_type="application/json")

# 刪除特定id餐廳的詳細資料
@app.route('/restaurants/<int:id>', methods = ['DELETE'])
def delRes(id):
    delCount = system.delRes(id)
    if(delCount == 1):
        return Response(status = 200)
    else:
        return Response(status = 404)

# 瀏覽器預設會請求favicon.ico做為網頁圖標,加這個讓它不會報錯
@app.route('/favicon.ico')
def favicon():
    return ""