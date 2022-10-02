import Foundation


//print("№1. Через readLine вводится любое количество слов После чего эти слова сортируются по количеству символов Далее отображается самое короткое слово(если несколько с таким количеством - отобразить все) и так же самое длинное!")
//
//print("")
//
//let readline1 = readLine()!
//let readline2 = readLine()!
//let readline3 = readLine()!
//
//let vse = [readline1,readline2,readline3]
//
//func min(vse: [String]) -> (min: String , max: String)? {
//    if vse.isEmpty{return nil}
//        var currentMin = vse[0]
//    var currentMax = vse[0]
//    for value in vse[1..<vse.count]{
//        if value < currentMin{
//            currentMin = value
//        }else if value > currentMax {
//            currentMax = value
//        }
//
//    }
//
//return(currentMin , currentMax)
//}
//
//if let i = min(vse: [ readline1 ,readline2 ,readline3]) {
//    print("min is \([i.min.sorted()]) and max is \([i.max.sorted()])")
//}
//
//print("")




print("№2. Составить список из 20 контактов (Имя - номер телефона) Отсортировать по алфавиту (А-Я) и отобразить на какую букву сколько контактов сохранено")
print("")


let kontArray: [[String]] = [["Z","Zidar","0553456780" ,"Zarif","0554005500","Zahar","0553334455"],["A","Aidar","0559890980","Artur","0553245542","Alim","0559901456","Alisha","055446781"],["V","Viktor","0553333998","Vasya","0557600333"],["S","Sasha", "053321789"],["L","Lina","0554456324","Lesha","0557898976"],["R","Ruslan","0553445566","Rinat","0557878967","Ravshan","0551254654"],["F","Farid","0556667898","Farhat","0559897861"],["J","Javid","0554435878","Jhonson","0057677645"],["T","Temirlan","0558889899b"]]
var bukvy = ["A","F","J","L","R","S","T","V","Z"]

    



print(kontArray.sorted {
    $0.first! < $1.first!
})
for i in kontArray{
   
    print("\(i.count - i.count / 2 - 1) контактов на букву ")

}



//    №3. Составить мини-игру “Викторина” используя массивы для записи вопросов и ответов
//    В игре должно быть 5 раундов по 3 вопроса
//    Так же должны быть несгораемые суммы
//    Так же в конце если человек проиграл - показать какой ответ был верным и отобразить выигрыш и сколько раундов было выиграно
print("")
print("И Так  Мы Начинаем нашу Викторину!")
print("")
print("Суть игры: Я задаю вам интелектуальные вопросы и вы отвечайте на них!")
print("")
print("Игра идет 5 раундов и по 1 вопросу - 1 раунд дает вам в банк сумме - 10000 сом!")
print("")
print("Изначальная сумма у вас будет 5_000 сом")
print("Плюс у вас есть = Звонок другу,замена вопроса")
print("")
print("И так мы начинаем!!!")



var round1: [String] = ["Самый огромный Океан?",
                        "А: Тихий. B: Атлантичнский. C: Индийский"]

var bank: Int = 5_000

print(round1)

let readline = readLine()!

if readline == "A"{
    bank += 10_000
    print("Вы прошли дальше и теперь ваш банк увеличился в размере \(bank) сом")
}else{
    print("И это не правильный ответ")
    print("Правильным ответом будет А")
   print("Ваш банк состовлял в сумме \(bank)")
    
}
print("")
 print("И так мы начинаем 2-й раунд!")
print("Напомню у вас осталось - Звонок другу,замена вопросам")
var round2: [String] = ["В какой стране самое большое население в мире?",
                        "А:Россия B: Китай C: Индия"]

print(round2)

let readline2 = readLine()!

if readline2 == "B"{
    bank += 10_000
print("Вы прошли дальше и теперь ваш банк увеличился в размере \(bank) сом")
}else{
    print("И это не правильный ответ")
    print("Правильным ответом будет B!")
    print("Ваш банк состовлял в сумме \(bank)")
}
print("")
print("И так мы начинаем наш 3-й рануд!")
print("Напомню у вас осталось - Звонок другу,замена вопросам")
var round3: [String] = ["Сколько лапок у паука?",
                        "A:6 B:10 C:8"]
print(round3)

let readline3 = readLine()!

if readline3 == "C" {
    bank += 10_000
    print("Вы прошли дальше и теперь ваш банк увеличился в размере \(bank) сом")
}else{
    print("И это не правильный ответ")
    print("Правильным ответом будет C!")
    print("Ваш банк состовлял в сумме \(bank)")
    print("К сожелению вы не проходите дальше и ваша вся сумма прогорает!")
}

print("")
 print("И так мы начинаем 4-й раунд!")
print("Напомню у вас осталось - Звонок другу,замена вопросам")
var round4 : [String] = ["Кого называют «царь зверей»?",
                         "A:Льва B:Тигра C: Леопард "]
print(round4)

let readline4 = readLine()!


if readline4 == "A"{
    bank += 10_000
    print("Вы прошли дальше и теперь ваш банк увеличился в размере \(bank) сом")
}else{
    print("И это не правильный ответ")
    print("Правильным ответом будет A!")
    print("Ваш банк состовлял в сумме \(bank)")
    print("К сожелению вы не проходите дальше и ваша вся сумма прогорает!")
}

print("")
 print("И так мы начинаем последний наш раунд!")
print("Посмотри сможет ли наш участник забрать сумму в размере 55_000 сомов!")
print("Напомню у вас осталось - Звонок другу,замена вопросам")
var round5 : [String] = ["Кто лучший друг Чебурашки?",
                         "A:Галя B:Гена  C:Валера"]

print(round5)
let readline5 = readLine()!

if readline5 == "B"{
    bank += 10_00
print("И вы стали победителем этой викторины! И ваш приз в сумме \(bank) сом")
}else{
    print("И это не правильный ответ")
    print("Правильным ответом будет A!")
    print("Ваш банк состовлял в сумме \(bank)")
    print("К сожелению вы не проходите дальше и ваша вся сумма прогорает!")
}




//print("№1. Составить программу, которая будет добавлять товары в базу данных товаров магазина. Учесть, что у некоторых товаров может не быть некоторых параметров")




//class Product {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//    convenience init() {
//        self.init(name: "No product")
//    }
//}

//class magazine: Product {
//    var quantity: Int
//    var price: Int
//    init(name: String, quantity: Int, price: Int) {
//        self.quantity = quantity
//        self.price = price
//        super.init(name: name)
//    }
//    convenience override init(name: String) {
//        self.init(name: name, quantity: 5, price: 20)
//    }
//}
//
//class ShoppingList: magazine {
//    var check = false
//    var description: String {
//        var output = "\(quantity) \(name) - \(price * quantity) som)"
//        output += check ? " Discount" : " no discount"
//        return output
//    }
//}
//var product = [
//ShoppingList(),
//ShoppingList(name: "Pineapple"),
//ShoppingList(name: "Apple", quantity: 10, price: 20)
//]
//product[0].name = "Watermelon"
//product[0].check = true
//for item in product {
//    print(item.description)
//}



