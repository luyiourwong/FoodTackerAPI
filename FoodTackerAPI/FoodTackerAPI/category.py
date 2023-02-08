# 宣布全域變數
cat = dict()

def initCat():
    global cat
    cat = dict()
    return cat

def addCat(list):
    global cat
    cat = list
    return cat

def getCatAll():
    global cat
    return cat

def getCat(id):
    global cat
    return cat[id]

