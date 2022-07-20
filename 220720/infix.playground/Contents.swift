import Foundation

infix operator ** : MultiplicationPrecedence

func ** (lhs: String, rhs: String) -> Bool {
    return lhs.contains(rhs)
}

let helloYagom: String = "Hello yagom"
let yagom: String = "yagom"
let isContainsYagom: Bool = helloYagom ** yagom



class Car {
    var modelYear: Int?
    var modelName: String?
    
    static func == (lhs: Car, rhs: Car) -> Bool {
        return lhs.modelName == rhs.modelName
    }
}

struct SmartPhone {
    var company: String?
    var model: String?
    
    static func == (lhs: SmartPhone, rhs: SmartPhone) -> Bool {
        return lhs.model == rhs.model
    }
}

//func == (lhs: Car, rhs: Car) -> Bool {
//    return lhs.modelName == rhs.modelName
//}
//
//func == (lhs: SmartPhone, rhs: SmartPhone) -> Bool {
//    return lhs.model == rhs.model
//}

let myCar = Car()
myCar.modelName = "S"

let yourCar = Car()
yourCar.modelName = "S"

var myPhone = SmartPhone()
myPhone.model = "SE"

var yourPhone = SmartPhone()
yourPhone.model = "6"

print(myCar == yourCar)
print(myPhone == yourPhone)
