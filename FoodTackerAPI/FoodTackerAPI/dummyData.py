from FoodTackerAPI import dbenum as schema

def getResaurants():
    results = [
        {
            schema.Store_Id : 1,
            schema.Store_Valid: 1,
            schema.Store_Name: "MockRes",
            schema.Store_TimeOpen:"12:00",
            schema.Store_TimeClose:"18:00"
        },
        {
            schema.Store_Id : 2,
            schema.Store_Valid: 1,
            schema.Store_Name: "COOL",
            schema.Store_TimeOpen:"12:00",
            schema.Store_TimeClose:"18:00"
        },
        {
            schema.Store_Id : 3,
            schema.Store_Valid: 1,
            schema.Store_Name: "Temp",
            schema.Store_TimeOpen:"12:00",
            schema.Store_TimeClose:"18:00"
        }
    ]
    return results