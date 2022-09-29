import Foundation


print("№1. Через readLine вводится любое количество слов После чего эти слова сортируются по количеству символов Далее отображается самое короткое слово(если несколько с таким количеством - отобразить все) и так же самое длинное!")

print("")

let readline1 = readLine()!
let readline2 = readLine()!
let readline3 = readLine()!

let vse = [readline1,readline2,readline3]

func min(vse: [String]) -> (min: String , max: String)? {
    if vse.isEmpty{return nil}
        var currentMin = vse[0]
    var currentMax = vse[0]
    for value in vse[1..<vse.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax {
            currentMax = value
        }

    }

return(currentMin , currentMax)
}

if let i = min(vse: [ readline1 ,readline2 ,readline3]) {
    print("min is \([i.min.sorted()]) and max is \([i.max.sorted()])")
}

print("")




print("№2. Составить список из 20 контактов (Имя - номер телефона) Отсортировать по алфавиту (А-Я) и отобразить на какую букву сколько контактов сохранено")
print("")

var dictTel = ["Abdurahaman" : +996551111111 , "Aidai" : +996552222222, "Bektur" : +996553333333, "Danya" : +996554444444,"Dima" : +996555555555,"Jazmira"  : +996556666666,"Jyldyz" : +996557777777,"Islam": +996558888888, "Ismail": +996554567890, "Karim" : +996559999999,"Malik" : +996551122334,"Mariya" : +996552233445,"Muhamed" : +996553344556,"Pety" : +996555566777,"Rustam" : +996557788998,"Saule" : +996558899009,"Temirlan" : +996558877090,"Shamil" : +99655123567,"Эrlan" : +996551456789]
//
//let telNum = dictTel.sorted()

//var a = 0 , b = 0 , c = 0 , d = 0 ,e = 0, f = 0, g = 0 , h = 0 ,iii = 0 ,j = 0 ,k = 0 ,l = 0 ,m = 0 ,n = 0 ,o = 0, p = 0, q = 0 , r = 0, s = 0, t = 0 , u = 0 ,v = 0 ,w = 0, x = 0, y = 0 , z = 0 ,lol = 0
//


for (key,value) in dictTel{
    print("\(key): +\(value)")
}





print("")






print("№1. Составить программу, которая будет добавлять товары в базу данных товаров магазина. Учесть, что у некоторых товаров может не быть некоторых параметров")



class Product {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "No product")
    }
}

class magazine: Product {
    var quantity: Int
    var price: Int
    init(name: String, quantity: Int, price: Int) {
        self.quantity = quantity
        self.price = price
        super.init(name: name)
    }
    convenience override init(name: String) {
        self.init(name: name, quantity: 5, price: 20)
    }
}

class ShoppingList: magazine {
    var check = false
    var description: String {
        var output = "\(quantity) \(name) - \(price * quantity) som)"
        output += check ? " Discount" : " no discount"
        return output
    }
}
var product = [
ShoppingList(),
ShoppingList(name: "Pineapple"),
ShoppingList(name: "Apple", quantity: 10, price: 20)
]
product[0].name = "Watermelon"
product[0].check = true
for item in product {
    print(item.description)
}







