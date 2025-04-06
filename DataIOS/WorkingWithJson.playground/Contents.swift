import Foundation

let jsonString = """
[
    {
        "id":1,
        "inventory":20,
        "price":6,
        "name":"Beef Pasta"
    },
    {
        "id":2,
        "inventory":100,
        "price":2,
        "name":"Vanilla Icecream"
    }
]
"""

let utf8String = jsonString.utf8
let jsonData = Data(utf8String)

struct MenuItem:Decodable {
    enum CodingKeys:String,CodingKey{
        case identity = "id",inventory,cost = "price",name
    }
    let identity: Int
    let inventory:Int
    let cost:Int
    let name:String
}

let decoder = JSONDecoder()
let arrayOfMenuItem = try? decoder.decode([MenuItem].self, from: jsonData)

arrayOfMenuItem?.forEach
{
    print($0.cost)
}
