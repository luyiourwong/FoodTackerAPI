import FoodTackerAPI.category as cat

#餐廳的類別
class res:
    
    def __init__(self, id, valid, name, timeo, timec):
        # 不為 NULL 項
        self.Id = id
        self.Valid = valid
        self.StoreName = name
        self.Open = timeo
        self.Close = timec
        self.Rating = None
        self.RatingTime = None
        # 可為 NULL 項, 或非Store DB可直接查詢項
        # self.Category_Id = None
        # self.ContactInfo = None
        # self.Address = None
        # self.Description = None

    # 不為 NULL 項
    def setId(self, arg):
        self.Id = arg

    def getId(self):
        return self.Id

    def setValid(self, arg):
        self.Valid = arg

    def getValid(self):
        return self.Valid

    def setStoreName(self, arg):
        self.StoreName = arg

    def getStoreName(self):
        return self.StoreName

    def setOpen(self, arg):
        self.Open = arg

    def getOpen(self):
        return self.Open

    def setClose(self, arg):
        self.Close = arg

    def getClose(self):
        return self.Close

    def setRating(self, arg):
        self.Rating = arg

    def getRating(self):
        return self.Rating

    def setRatingTime(self, arg):
        self.RatingTime = arg

    def getRatingTime(self):
        return self.RatingTime

    # 可為 NULL 項, 或非Store DB可直接查詢項
    def setCategoryId(self, arg):
        self.Category_Id = arg

    def getCategoryId(self):
        return self.Category_Id

    def setContactInfo(self, arg):
        self.ContactInfo = arg

    def getContactInfo(self):
        return self.ContactInfo

    def setAddress(self, arg):
        self.Address = arg

    def getAddress(self):
        return self.Address

    def setDescription(self, arg):
        self.Description = arg

    def getDescription(self):
        return self.Description

    # Category
    def getCategoryName(self):
        return cat.getCat(self.getCategoryId)